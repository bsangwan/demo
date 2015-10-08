
=begin
	Name: DateCull.rb
	
	Author: Zhu Jie
	Version: 1.0
	Date: 09/2015

	Nuix Version: > 5

	Usage:
	options = {
		before:{date:20150308},
		after:{date:20150918}
	}
	newDateCull = DateCull.new(options)
	newDateCull.buildQuery
	newDateCull.dateCull openCase
=end

class DateCullError < StandardError
end

class DateCull
	DateCullOptions = {
		tag:nil,
		exclude:"DateCullExclude",
		scopeQuery:"flag:audited AND has-exclusion:0",
		itemDate:true,
		commDate:true,
		dateProperties:[],
		topLevel:"flag:top_level",
		before:{
			inclusive:true,
			date:nil
		},
		after:{
			inclusive:true,
			date:nil
		},
		metrics:{
			PostDateCullParentCount:0,
			PostDateCullFamilyCount:0,
			PostDateCullVolume:0
		}
	}
	@@utilities = $utilities
	attr_accessor :query,:options
	def initialize options={}
		@options = DateCullOptions.merge(options)
		[:before,:after].each do |o|
			@options[o] = DateCullOptions[o].merge(@options[o])
		end
	end

	def buildQuery
		raise DateCullError,"Error in DateCull. Before date and after date are not set." unless @options[:before][:date] or @options[:after][:date]
		raise DateCullError,"Error in DateCull. itemDate, commDate and date-properties are all set to false." unless @options[:itemDate] or @options[:commDate] or @options[:dateProperties]
	
		[:before,:after].each do |d|
			@options[d][:date] = "*" if "#{@options[d][:date]}".size == 0
		end

		[:tag,:exclude,:scopeQuery,:topLevel].each do |o|
			@options[o] = nil if "#{@options[o]}".size == 0
		end

		@options[:before][:bracket] = (@options[:before][:inclusive] ? "]" : "}")
		@options[:after][:bracket] = (@options[:after][:inclusive] ? "[" : "{")
		
		queries = []
		queries << "#{@options[:scopeQuery]}" if @options[:scopeQuery]
		queries << "#{@options[:topLevel]}" if @options[:topLevel]

		ranges = []
		if @options[:before][:date] == "*" or @options[:after][:date] == "*" or @options[:after][:date] <= @options[:before][:date]
			ranges << "#{@options[:after][:bracket]}#{@options[:after][:date]} TO #{@options[:before][:date]}#{@options[:before][:bracket]}"
		elsif @options[:after][:date] > @options[:before][:date]
			ranges << "#{@options[:after][:bracket]}* TO #{@options[:before][:date]}#{@options[:before][:bracket]}"
			ranges << "#{@options[:after][:bracket]}#{@options[:after][:date]} TO *#{@options[:before][:bracket]}"
		end
		dateQuery = []
		ranges.each do |range|
			dateQuery << "item-date:#{range}" if @options[:itemDate]
			dateQuery << "comm-date:#{range}" if @options[:commDate]
			@options[:dateProperties].each do |p|
				dateQuery << "date-properties:\"#{p}\":#{range}"
			end
		end
		queries << "(#{dateQuery.join(' OR ')})"
		@query = queries.join(' AND ')
	end
	
	def dateCull currentCase
		metrics = @options[:metrics]
		raise DateCullError,"ERROR in DateCull. No valid open case." unless currentCase.respond_to?("search")
		begin
			docs = currentCase.search(@query)
		rescue => e
			raise DateCullError,"Error in DateCull. Invalid query #{@options[:query]}. Details: #{e.message};#{e.backtrace.inspect}"
		end
		metrics[:PostDateCullParentCount] = docs.size if metrics[:PostDateCullParentCount]
		metrics[:PostDateCullVolume] = docs.inject(0){|r,e|r += getRealSize(e)} if metrics[:PostDateCullVolume]

		if @options[:topLevel]
			docs = @@utilities.item_utility.findFamilies(docs).select{|x|x.isAudited and not x.isExcluded}
			metrics[:PostDateCullFamilyCount] = docs.size if metrics[:PostDateCullFamilyCount]
		end
		if @options[:tag]
			@@utilities.getBulkAnnotater.addTag @options[:tag],docs
		end
		if @options[:exclude]
			@@utilities.getBulkAnnotater.exclude @options[:exclude],docs
		end
		metrics
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
end

