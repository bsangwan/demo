
=begin
	Name: Search.rb
	
	Author: Zhu Jie
	Version: 1.0
	Date: 09/2015

	Nuix Version: > 5

	Usage:
	options = {
		folder:"D:/",
		namePrefix:"Test",
		precise:3,
		searchHitsOverlay:true,
		tag:{
			hits:nil,
			family:nil,
			hitsTopLevel:nil,
			uniqueHits:nil,
			uniqueFamilyHits:nil,
			uniqueHitsTopLevel:nil,
			totalHits:nil,
			totalFamilies:nil
		},
		report:{
			hits:true,
			family:true,
			hitsTopLevel:true,
			uniqueHits:true,
			uniqueFamilyHits:true,
			uniqueHitsTopLevel:true,
			totalHits:true,
			totalFamilies:true
		}
	}
	newSearch = Search.new searchTerms,options
	newSearch.search openCase
	newSearch.writeReport
=end

require "set"
require "csv"
require "time"
class SearchError < StandardError
end

class Search
	SearchOptions = {
		folder:"D:/",
		namePrefix:"Test",
		precise:3,
		searchHitsOverlay:true,
		custodialReports:nil,
		tag:{
			hits:nil,
			family:nil,
			hitsTopLevel:nil,
			uniqueHits:nil,
			uniqueFamilyHits:nil,
			uniqueHitsTopLevel:nil,
			totalHits:nil,
			totalFamilies:nil
		},
		report:{
			hits:true,
			family:true,
			hitsTopLevel:true,
			uniqueHits:true,
			uniqueFamilyHits:true,
			uniqueHitsTopLevel:true,
			totalHits:true,
			totalFamilies:true
		}
	}

	attr_accessor :options
	def initialize terms,options={}
		@timestamp = Time.now.strftime("%Y%m%dT%H%M")

		@options = SearchOptions.merge(options)
		@options[:report] = @options[:tag].merge(@options[:report])
		@searches = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = {}}}
		@terms = terms

		@reports = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = Hash.new{|a,b|a[b] = 0}}}
		@custodialReports = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = Hash.new{|a,b|a[b] = 0}}} if @options[:custodialReports]
		@total = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = 0}}
		@addtionalStats = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = 0}}
	end

	def search currentCase,batchName = nil,custodian = nil
		raise SearchError,"ERROR in Search. No valid open case." unless currentCase.respond_to?("search")
		batchName = (batchName ? batchName : currentCase.getRootItems[0].getName)
		custodian = (custodian ? custodian : currentCase.getRootItems[0].getCustodian) if @options[:custodialReports]
		topLevel = Set.new
		metrics = Hash.new{|x,y|x[y] = 0}
		@terms.each do |reportName,searchTerms|
			@searches[reportName][batchName] = SearchPerBatchPerReport.new(currentCase,batchName,reportName,searchTerms,@timestamp,@options[:report],@options[:tag])
			@searches[reportName][batchName].startSearch
			@searches[reportName][batchName].tagAndGenerateReport
			@searches[reportName][batchName].generateSearchHitsOverlay :folder=>@options[:folder],:namePrefix=>@options[:namePrefix] if @options[:searchHitsOverlay]
			@searches[reportName][batchName].report.each do |termName,metrics|
				metrics.each do |k,v|
					@reports[reportName][termName][k] += v
					@custodialReports["#{[reportName,custodian].joinNonBlank('_')}"][termName][k] += v if @options[:custodialReports]
				end
			end
			@searches[reportName][batchName].total.each do |k,v|
				@total[reportName][k] += v
			end
			@searches[reportName][batchName].addtionalStats.each do |k,v|
				@addtionalStats[reportName][k] += v
			end
			@searches[reportName][batchName].metrics.each do |x,y|
				metrics[x] += y
			end
		end
		metrics
	end

	def writeReport options = {}
		options = @options.merge(options)
		report = Proc.new do |reportsHash|
			reportsHash.each do |reportName,metrics|
				CSV.open("#{options[:folder]}/#{[options[:namePrefix],reportName.to_s,"Search_Report",@timestamp].joinNonBlank('_')}.csv","w:UTF-8",:row_sep=>"\r\n") do |csv|
					headers = metrics.map{|k,v|v.keys}.flatten.uniq
					csv << ["\uFEFF",headers,"TERM"].flatten
					metrics.each do |k,v|
						csv << ["#{k}",headers.map{|x|x.match(/size/i) ? v[x].byteToGiga(options[:precise]) : v[x]},@terms[reportName][k][0][:client]].flatten
					end
					csv << []
					@total[reportName].each do |k,v|
						csv << [nil,(k.match(/size/i) ? v.byteToGiga : v),"#{k}"]
					end
					csv << []
					csv << ["ADDITIONAL STATISTICS"]
					@addtionalStats[reportName].each do |k,v|
						csv << ["#{k}",v]
					end
				end
			end
		end
		report.call @reports
		report.call	@custodialReports if @options[:custodialReports]
	end
end

class SearchPerBatchPerReport
	@@butil = $utilities.getBulkAnnotater	
	attr_reader :report,:total,:addtionalStats,:metrics
	def initialize currentCase,batchName,reportName,searchTerms,timestamp,reportOptions,tagOptions
		@timestamp = timestamp

		@currentCase = currentCase
		@batchName = batchName
		@reportOptions = reportOptions
		@tagOptions = tagOptions
		@reportName = reportName
		@terms = searchTerms

		@hits = Hash.new{|x,y|x[y] = Set.new}
		@hitsTopLevel = Hash.new{|x,y|x[y] = Set.new}
		@responsiveItems = []

		@report = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = 0}}
		@total = Hash.new{|x,y|x[y] = 0}
		@addtionalStats = {}
		@metrics = Hash.new{|x,y|x[y] = 0}
	end

	def startSearch
		@terms.each do |termName,termArray|
			@report[termName] = Hash.new{|x,y|x[y] = [0,0]}
			termArray.each do |t|
				results = @currentCase.searchUnsorted(t[:query])
				if t[:regex]
					results.select!{|item|item.text =~ t[:regex] || item.name =~ t[:regex]}
				end
			
				results.each do |item|
					@hits[item] << termName
					@hitsTopLevel[item.getTopLevelItem] << termName
				end
			end
		end
		@terms.addtionalQueries.each do |name,query|
			@addtionalStats[name] = @currentCase.count(query)
		end
	end

	def generateSearchHitsOverlay options = {}
		hits = @hits.map{|x,y|[x.getGuid,y]}
		DAT.create("#{options[:folder]}/#{[options[:namePrefix],@batchName,@reportName.to_s,"GUID_SRCHHITS_overlay",@timestamp].joinNonBlank('_')}.dat","w:UTF-8") do |f|
			hits.each do |k,v|
				f << [k,v.map{|t|@terms[t][0][:client]}.join("; ")]
			end
		end
		CSV.open("#{options[:folder]}/#{[options[:namePrefix],@batchName,@reportName.to_s,"GUID_SRCHHITS_overlay",@timestamp].joinNonBlank('_')}.csv","w:UTF-8") do |f|
			hits.each do |k,v|
				f << [k,v.to_a.join("; ")]
			end
		end
	end

	def tagAndGenerateReport
		pullFamiliesAndSize(@reportOptions[:totalFamilies] ||  @reportOptions[:family] || @reportOptions[:uniqueFamilyHits])
		@@butil.addTag @terms.totalFamiliesTag,@responsiveItems if @tagOptions[:totalFamilies]
		@@butil.addTag @terms.totalHitsTag,@hits.keys if @tagOptions[:totalHits]
		
		if @reportOptions[:totalHits]
			@total[:Total] = @hits.keys.size
			@metrics[:PostSearchHitsCount] = @total[:Total]
			@metrics[:PostSearchHitsVolume] = @hits.keys.inject(0){|r,e|r += @sizeMap[e]}
		end

		if @reportOptions[:totalFamilies]
			@total[:"Total w/ Family"] = @responsiveItems.size
			@total[:"Responsive Size (GB)"] = @responsiveItems.inject(0){|r,e|r += @sizeMap[e]}
			@metrics[:PostSearchFamilyCount] = @total[:"Total w/ Family"]
			@metrics[:PostSearchFamilyVolume] = @total[:"Responsive Size (GB)"]
		end

		if @reportOptions[:hits] or @reportOptions[:family] or @reportOptions[:uniqueHits] or @reportOptions[:uniqueFamilyHits] or @reportOptions[:hitsTopLevel] or @reportOptions[:uniqueHitsTopLevel]
			@hits = sortHitsHash @hits if @tagOptions[:hits] or @tagOptions[:uniqueHits]
			@hitsTopLevel = sortHitsHash @hitsTopLevel if @tagOptions[:family] or @tagOptions[:uniqueFamilyHits] or @tagOptions[:hitsTopLevel] or @tagOptions[:uniqueHitsTopLevel]
			if @reportOptions[:uniqueHits]
				@metrics[:PostSearchUniqueHitsCount] = 0
				@metrics[:PostSearchUniqueHitsVolume] = 0
			end
			if @reportOptions[:uniqueFamilyHits]
				@metrics[:PostSearchUniqueFamilyCount] = 0
				@metrics[:PostSearchUniqueFamilyVolume] = 0
			end
	
			@terms.each do |termName,ts|
				if @reportOptions[:hits] or @reportOptions[:uniqueHits]
					hits = @hits.select{|i,t|t.include? termName}
					if @reportOptions[:uniqueHits]
						uniqHits = hits.select{|i,t|t.size == 1}
					end
				end
				
				if @reportOptions[:hitsTopLevel] or @reportOptions[:uniqueHitsTopLevel] or @reportOptions[:family] or @reportOptions[:uniqueFamilyHits]
					hitsTop = @hitsTopLevel.select{|i,t|t.include? termName}
					if @reportOptions[:uniqueFamilyHits] or @reportOptions[:uniqueHitsTopLevel]
						uniqTopHits = hitsTop.select{|i,t|t.size == 1}
					end		
				end
					
				if @reportOptions[:hits]
					@report[termName][:HITS] = hits.keys.size
					@report[termName][:"HITS SIZE"] = hits.keys.inject(0){|r,e|r += @sizeMap[e]}
				end
				
				if @reportOptions[:family]
					familyHits = getFamilies(hitsTop.keys)
					@report[termName][:"HITS FAMILY"] = familyHits.size
					@report[termName][:"HITS FAMILY SIZE"] = familyHits.inject(0){|r,e|r += @sizeMap[e]}
				end

				if @reportOptions[:uniqueHits]
					@report[termName][:"UNIQUE HITS"] = uniqHits.keys.size
					@report[termName][:"UNIQUE HITS SIZE"] = uniqHits.keys.inject(0){|r,e|r += @sizeMap[e]}
					@metrics[:PostSearchUniqueHitsCount] += @report[termName][:"UNIQUE HITS"]
					@metrics[:PostSearchUniqueHitsVolume] += @report[termName][:"UNIQUE HITS SIZE"]
				end
				
				if @reportOptions[:uniqueFamilyHits]
					uniqueFamilyHits = getFamilies(uniqTopHits.keys)
					@report[termName][:"UNIQUE FAMILY"] = uniqueFamilyHits.size
					@report[termName][:"UNIQUE FAMILY SIZE"] = uniqueFamilyHits.inject(0){|r,e|r += @sizeMap[e]}
					@metrics[:PostSearchUniqueFamilyCount] += @report[termName][:"UNIQUE FAMILY"]
					@metrics[:PostSearchUniqueFamilyVolume] += @report[termName][:"UNIQUE FAMILY SIZE"]
				end

				if @reportOptions[:hitsTopLevel]
					@report[termName][:"HITS TOP LEVEL"] = hitsTop.keys.size
					@report[termName][:"HITS TOP LEVEL SIZE"] = hitsTop.keys.inject(0){|r,e|r += @sizeMap[e]}
				end
				
				if @reportOptions[:uniqueHitsTopLevel]
					@report[termName][:"UNIQUE TOP LEVEL"] = uniqTopHits.keys.size
					@report[termName][:"UNIQUE TOP LEVEL SIZE"] = uniqTopHits.keys.inject(0){|r,e|r += @sizeMap[e]}
				end

				if @tagOptions[:hits]
					@@butil.addTag ts[0][:hitsTag],hits.keys
				end
				if @tagOptions[:uniqueHits]
					@@butil.addTag "#{ts[0][:hitsTag]}|Unique Hits",uniqHits.keys
				end

				if @tagOptions[:family]
					@@butil.addTag "#{ts[0][:hitsTag]}|Family",familyHits
				end
				
				if @tagOptions[:uniqueFamilyHits]
					@@butil.addTag "#{ts[0][:hitsTag]}|Unique Family",uniqueFamilyHits
				end

				if @tagOptions[:hitsTopLevel]
					@@butil.addTag "#{ts[0][:hitsTag]}|TopLevel",hitsTop.keys
				end
				
				if @tagOptions[:uniqueHitsTopLevel]
					@@butil.addTag "#{ts[0][:hitsTag]}|Unique TopLevel",uniqTopHits.keys
				end
							
				hits = nil
				hitsTop = nil
				familyHits = nil
				uniqueFamilyHits = nil
			end
		end
		nil
	end

	def pullFamiliesAndSize pullFamilies
		if pullFamilies
			topGuids = @hitsTopLevel.keys.map{|x|x.getGuid}
			@familyMap = Hash.new{|x,y|x[y] = []}
			@sizeMap = {}
			topGuids.each_slice(10000) do |g|
				docs = @currentCase.searchUnsorted("top-level-guid:(#{g.join(' OR ')}) AND flag:audited AND has-exclusion:0")
				@responsiveItems += docs
				docs.each do |e|
					@sizeMap[e] = getRealSize(e)
				end
			end
			@responsiveItems.each do |e|
				@familyMap[e.getTopLevelItem] << e
			end
		else
			@hits.keys.each_slice(10000) do |docs|
				docs.each do |e|
					@sizeMap[e] = getRealSize(e)
				end
			end
		end
		nil
	end

	def sortHitsHash items
		sorted = Hash[items.sort_by{|x,y|x.getPosition}]
	end

	def getRealSize i
		begin
			properties = i.get_properties()
			digest_size = i.get_digests.get_input_size.to_i
			file_size = properties['File Size'].to_i
			mapi_message_size =  properties['Mapi-Message-Size'].to_i
			audited_size = i.get_audited_size.to_i
			max_result = [audited_size, digest_size, file_size, mapi_message_size, 0].max
			if (audited_size >0 and !i.get_communication.nil? and i.get_children.size>0)
				max_result += digest_size
			end
			return max_result
		rescue
			return 0
		end
	end

	def getFamilies items
		items.map{|x|@familyMap[x]}.flatten
	end
end
