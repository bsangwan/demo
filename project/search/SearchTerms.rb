
=begin
	Name: SearchTerms.rb
	
	Author: Zhu Jie
	Version: 1.0
	Date: 09/2015

	Nuix Version: > 5

	Usage:
	options = {
		tag:nil,
		sat:nil,
		report:nil,
		scopeQuery:"has-exclusion:0",
		hitsKeyWord:"Terms",
		hitsFamiliesKeyWord:"Family"
	}
	searchTerms = SearchTerms.new csvTable,options
=end

class SearchTermsError < StandardError
end

class SearchTerms
	SearchTermsOptions = {
		tag:nil,
		sat:nil,
		report:nil,
		scopeQuery:"has-exclusion:0",
		hitsKeyWord:nil,
		hitsFamiliesKeyWord:nil
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
