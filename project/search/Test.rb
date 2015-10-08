class Array
	def joinNonBlank s
		self.select{|x|"#{x}".size > 0}.join(s)
	end
end

class Numeric
	def byteToGiga precise = 3
		result = (self/1073741824.0).round(precise)
		if self > 0 and result == 0
			result = 1/("1".ljust(precise+1,"0").to_f)
		end
		result
	end
end
	
class DAT
	def initialize(file_handle)
		@file_handle = file_handle
	end

	def <<(values)
		@file_handle << DAT.to_dat_line(Array(values))
	end

	def self.create(file,mode="w:UTF-8",&block)
		File.open(file,mode) do |dat_file|
			writer = new(dat_file)
			block.call(writer)
		end
	end

	def self.to_dat_line(values)
		#Replace newlines in values with ®
		escaped_values = values.map{|v|v ? v.to_s.gsub(/\r?\n/,"\u00AE") : ""}
		#Build DAT formatted line
		"\u00FE#{escaped_values.join("\u00FE\u0014\u00FE")}\u00FE\n"
	end
end

class SearchTermsError < StandardError
end

class SearchTerms
	SearchTermsOptions = {
		tag:nil,
		sat:nil,
		report:nil,
		scopeQuery:"has-exclusion:0",
		hitsKeyWord:"Terms",
		hitsFamiliesKeyWord:"Family"
	}
	attr_reader :terms,:options
	def initialize csvTable,options={:tag => nil,:sat => "SEARCH AGAINST THIS",:report => "Iris_Standard", :scopeQuery => "flag:audited AND has-exclusion:0", :hitsKeyWord => "Terms"}
		@options = SearchTermsOptions.merge(options)
		SearchTermsOptions.keys.each do |o|
			@options[o] = ("#{@options[o]}".gsub(/^\s*|\s$/,'').size > 0 ? "#{@options[o]}" : nil)
		end
		@terms = Hash.new{|x,y|x[y] = TermsPerReport.new(y.to_sym,@options)}
		if csvTable.headers.size < 2 
			raise SearchTermsError,"ERROR in search term CSV file: Invalid number of columns."
		elsif csvTable.headers.size <= 3
			simpleCsv csvTable
		else
			compatibleCsv csvTable
		end
		freeze
	end
	
	def freeze
		@terms.freeze
		@terms.each do |reportName,term|
			term.freeze
		end
	end

	def [] reportName
		@terms[reportName]	
	end
	
	def each &block
		@terms.each do |reportName,term|
			yield reportName,term
		end
	end

	def compatibleCsv csv
		csv.each do |record|
			csv.headers.each do |h|
				"#{record[h]}".gsub!(/^\s*|\s$/,'') 
			end
			report = ("#{record['REPORT']}".size > 0 ? "#{record['REPORT']}" : "#{@options[:report]}")
			name = record['TERM']
			raise SearchTermsError,"Term number #{name} is malformed. Should be like T001" unless name =~ /^T\d+$/i
			if "#{record['TAG']}".size > 0
				hitsTag = [@options[:tag],"#{record['TAG']}"].joinNonBlank('|')
			else
				hitsTag = [@options[:tag],[@options[:hitsKeyWord],report].joinNonBlank(' '),name].joinNonBlank('|')
			end
			nuix = ("#{record['NUIX QUERY']}".size > 0 ? record['NUIX QUERY'] : record['CLIENT TERM'])
			raise SearchTermsError,"#{name}, empty nuix query is not allowed" if nuix.size == 0
			client = "#{record['CLIENT TERM']}"
			raise SearchTermsError,"#{name}, empty client query is not allowed" if client.size == 0
			regex = ("#{record['REGEX']}".size > 0 ? Regexp.new(record['REGEX'],true) : nil)
			raise SearchTermsError,"#{name},Provided Regex #{regex} does not match client term #{client}" if regex and !client =~ regex
			queries = []
			if @options[:sat]
				searchAgainst = ("#{record['SEARCH AGAINST THIS']}".size > 0 ? [@options[:tag],"#{record['SEARCH AGAINST THIS']}"].joinNonBlank('|') : @options[:sat])
				queries << "tag:\"#{searchAgainst}\""
			end
			if @options[:scopeQuery]
				queries << @options[:scopeQuery]
			end
			queries << "(#{nuix})"
			query = queries.join(' AND ')
			term = {
				nuix:nuix,
				client:client,
				regex:regex,
				hitsTag:hitsTag,
				query:query
			}
			@terms[report.to_sym][name.to_sym] << term
		end
	end

	def simpleCsv csv
		report = "#{@options[:report]}"
		csv.each do |record|
			csv.headers.each do |h|
				"#{record[h]}".gsub!(/^\s*|\s$/,'') 
			end
			name = record[0]
			raise SearchTermsError,"Term number #{name} is malformed. Should be like T001" unless name =~ /^T\d+$/i
			hitsTag = [@options[:tag],[@options[:hitsKeyWord],report].joinNonBlank(' '),name].joinNonBlank('|')
			nuix = ("#{record[2]}".size > 0 ? record[2] : record[1])
			raise SearchTermsError,"#{name}, empty nuix query is not allowed" if nuix.size == 0
			client = "#{record[1]}"
			raise SearchTermsError,"#{name}, empty client query is not allowed" if client.size == 0
			queries = []
			if @options[:sat]
				queries << "tag:\"#{@options[:sat]}\""
			end
			if @options[:scopeQuery]
				queries << @options[:scopeQuery]
			end
			queries << "(#{nuix})"
			query = queries.join(' AND ')
			term = {
				nuix:nuix,
				client:client,
				hitsTag:hitsTag,
				query:query
			}
			@terms[report.to_sym][name.to_sym] << term
		end
	end
end

class TermsPerReport
	attr_reader :reportName,:totalHitsTag,:totalFamiliesTag,:terms,:addtionalQueries
	def initialize reportName,options
		@reportName = reportName
		@totalHitsTag = [options[:tag],[options[:hitsKeyWord],reportName].joinNonBlank(' ')].joinNonBlank('|')
		@totalFamiliesTag = [options[:tag],[[options[:hitsKeyWord],reportName].joinNonBlank(' '),options[:hitsFamiliesKeyWord]].joinNonBlank(' + ')].joinNonBlank('|')
		@terms = Hash.new{|x,y|x[y] = []}
		@addtionalQueries = {}
		satQueries = []
		if options[:sat]
			satQueries << "tag:\"#{options[:sat]}\""
		end
		if options[:scopeQuery]

			satQueries << options[:scopeQuery]
		end
		@addtionalQueries[:"SEARCH AGAINST"] = satQueries.join(' AND ')
	end
	
	def addTerm name,term
		@terms[name] << term
	end
	
	def [] termName
		@terms[termName]
	end
	
	def freeze
		@terms.freeze
	end

	def each &block
		@terms.each do |termName,term|
			yield termName,term
		end
	end
end


require "set"
require "csv"
require "time"
class SearchError < StandardError
end

class Search
	SearchOptions = {
		folder:"D:/Cherie",
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

	attr_accessor :options
	def initialize terms,options={}
		@timestamp = Time.now.strftime("%Y%m%dT%H%M")

		@options = SearchOptions.merge(options)
		@options[:report] = @options[:tag].merge(@options[:report])
		@searches = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = {}}}
		@terms = terms

		@reports = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = Hash.new{|a,b|a[b] = 0}}}
		@total = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = 0}}
		@addtionalStats = Hash.new{|x,y|x[y] = Hash.new{|i,j|i[j] = 0}}
	end

	def search currentCase,batch = nil
		raise SearchError,"ERROR in Search. No valid open case." unless currentCase.respond_to?("search")
		batch = (batch ? batch : currentCase.getRootItems[0])
		batchName = batch.getName
		topLevel = Set.new
		@terms.each do |reportName,searchTerms|
			@searches[reportName][batchName] = SearchPerBatchPerReport.new(currentCase,batchName,reportName,searchTerms,@timestamp,@options[:report],@options[:tag])
			@searches[reportName][batchName].startSearch
			@searches[reportName][batchName].tagAndGenerateReport
			@searches[reportName][batchName].generateSearchHitsOverlay :folder=>@options[:folder],:namePrefix=>@options[:namePrefix] if @options[:searchHitsOverlay]
			@searches[reportName][batchName].report.each do |termName,metrics|
				metrics.each do |k,v|
					@reports[reportName][termName][k] += v
				end
			end
			@searches[reportName][batchName].total.each do |k,v|
				@total[reportName][k] += v
			end
			@searches[reportName][batchName].addtionalStats.each do |k,v|
				@addtionalStats[reportName][k] += v
			end
		end
	end

	def writeReport options = {}
		options = @options.merge(options)
		@reports.each do |reportName,metrics|
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
end

class SearchPerBatchPerReport
	@@butil = $utilities.getBulkAnnotater	
	attr_reader :report,:total,:addtionalStats
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
		@total = {}
		@addtionalStats = {}
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
		end

		if @reportOptions[:totalFamilies]
			@total[:"Total w/ Family"] = @responsiveItems.size
			@total[:"Responsive Size (GB)"] = @responsiveItems.inject(0){|r,e|r += @sizeMap[e]}
		end

		if @reportOptions[:hits] or @reportOptions[:family] or @reportOptions[:uniqueHits] or @reportOptions[:uniqueFamilyHits] or @reportOptions[:hitsTopLevel] or @reportOptions[:uniqueHitsTopLevel]
			@hits = sortHitsHash @hits if @tagOptions[:hits] or @tagOptions[:uniqueHits]
			@hitsTopLevel = sortHitsHash @hitsTopLevel if @tagOptions[:family] or @tagOptions[:uniqueFamilyHits] or @tagOptions[:hitsTopLevel] or @tagOptions[:uniqueHitsTopLevel]
			@terms.each do |termName,ts|
				if @reportOptions[:hits] or @reportOptions[:uniqueHits]
					hits = @hits.select{|i,t|t.include? termName} 
				end
				
				if @reportOptions[:hitsTopLevel] or @reportOptions[:uniqueHitsTopLevel] or @reportOptions[:family] or @reportOptions[:uniqueFamilyHits]
					hitsTop = @hitsTopLevel.select{|i,t|t.include? termName}
					if @reportOptions[:uniqueFamilyHits] or @reportOptions[:uniqueHitsTopLevel]
						uniqTopHits = hitsTop.select{|i,t|t.size == 1}
					end		
				end

				if @reportOptions[:uniqueHits]
					uniqHits = hits.select{|i,t|t.size == 1}
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
				end
				
				if @reportOptions[:uniqueFamilyHits]
					uniqueFamilyHits = getFamilies(uniqTopHits.keys)
					@report[termName][:"UNIQUE FAMILY"] = uniqueFamilyHits.size
					@report[termName][:"UNIQUE FAMILY SIZE"] = uniqueFamilyHits.inject(0){|r,e|r += @sizeMap[e]}
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

require "csv"
csvTable = CSV.read("D:\\Cherie\\Search_Terms.csv",:headers=>true)
st = SearchTerms.new csvTable,:sat=>"6-Search|M001|SEARCH AGAINST THIS"
search = Search.new st
search.search $currentCase
search.writeReport
