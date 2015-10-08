require "csv"
require "date"
require "time"
require "net/http"
#load "#{File.dirname(__FILE__)}\\Search.rb"
#load "#{File.dirname(__FILE__)}\\SearchTerms.rb"
#load "#{File.dirname(__FILE__)}\\DateCull.rb"
#load "#{File.dirname(__FILE__)}\\Utilities.rb"
load "\\\\GEN3WEB01\\scripts\\Search.rb"
load "\\\\GEN3WEB01\\scripts\\SearchTerms.rb"
load "\\\\GEN3WEB01\\scripts\\DateCull.rb"
load "\\\\GEN3WEB01\\scripts\\Utilities.rb"

batchId = $custom_arguments.get("batchId")
caseLocation = $custom_arguments.get("caseLocation")
serverId = $custom_arguments.get("serverId")
jobId = $custom_arguments.get("jobId")
dateCull = $custom_arguments.get("dateCull").to_bool
dateRangeAfter = $custom_arguments.get("dateRangeAfter")
dateRangeBefore = $custom_arguments.get("dateRangeBefore")
searchTermList = $custom_arguments.get("searchTermList")
searchTagName = $custom_arguments.get("searchTagName")
extendedReporting = $custom_arguments.get("extendedReporting").to_bool
reportDirectory = $custom_arguments.get("reportDirectory").gsub(/[\\\\|\/]$/,'')
server = $custom_arguments.get("ApplicationServer")
port = $custom_arguments.get("ApplicationPort")

=begin
batchId = "B0917"
caseLocation = ["D:\\_PROJECTS\\0016\\Nuix Processing\\Case\\OLKS00016.M016.G001-5.2"]
#serverId = $custom_arguments.get("serverId")
jobId = 1234
dateCull = true
dateRangeAfter = "20010101"
dateRangeBefore = "20150921"
searchTermList = "D:\\Cherie\\Search_Terms.csv"
searchTagName = "SEARCH_TARGET"
extendedReporting = true
reportDirectory = "D:\\Cherie"
#server = $custom_arguments.get("ApplicationServer")
#port = $custom_arguments.get("ApplicationPort")
=end

begin
startTime = Time.now
searchLog = File.open("#{reportDirectory}\\#{jobId}_Search.log","w")

batchCaseLocation = Hash[batchId.split(",").zip(caseLocation)]

# Setup DateCull
if dateCull
	dateCullOptions = {
		before:{date:Date.strptime(dateRangeBefore,"%m/%d/%Y").strftime("%Y%m%d")},
		after:{date:Date.strptime(dateRangeAfter,"%m/%d/%Y").strftime("%Y%m%d")}
	}

	searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} Date Cull Options: #{dateCullOptions}"
	
	horizonDateCull = DateCull.new(dateCullOptions)
	horizonDateCull.buildQuery
end

# Setup Search
searchFilter = File.file? searchTermList
if searchFilter
	searchTermsOptions = {
		tag:searchTagName,
		scopeQuery:"flag:audited and has-exclusion:0"
	}

	searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} Search Terms Options: #{searchTermsOptions}"

	searchOptions = {
		folder:reportDirectory,
		namePrefix:"#{[jobId,searchTagName.split("|")[-1]].joinNonBlank('_')}",
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
			totalFamilies:(searchTagName.size > 0)
		},
		report:{
			hits:true,
			family:true,
			uniqueHits:extendedReporting,
			uniqueFamilyHits:extendedReporting,
			hitsTopLevel:nil,
			uniqueHitsTopLevel:nil,
			totalHits:true,
			totalFamilies:true
		}
	}

	searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} Search Options: #{searchOptions}"

	csvTable = CSV.read(searchTermList,:headers=>true,:encoding=>"BOM|UTF-8")
	horizonSearchTerms = SearchTerms.new csvTable,searchTermsOptions
	horizonSearch = Search.new horizonSearchTerms,searchOptions
end

#Iterate through cases
batchCaseLocation.each do |batchId,caseLocation|
	currentCase = $utilities.getCaseFactory.open(caseLocation)
	searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} Open Case: #{currentCase.getName}"
	
	#Get DateCull Stats
	dateCullMetrics = (dateCull ? horizonDateCull.dateCull(currentCase) : {})

	#Get Search Stats
	searchMetrics = (searchFilter ? horizonSearch.search(currentCase,batchId) : {})

	#Http update Stats
	params = dateCullMetrics.merge(searchMetrics).map{|x,y|"#{x}=#{y}"}.join("&")
	if params.size > 0
		http = Net::HTTP.new(server, port)
		searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} Update Metrics: #{params}"
		http.send_request('PUT', "/newhorizon/Batches/#{batchId}",params)
	end
	
	currentCase.close
end

horizonSearch.writeReport

endTime = Time.now
searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} Total Elapsed: #{Time.at(endTime - startTime).gmtime.strftime("%-H:%-M:%-S")}"

rescue => e
	#Log errors
	searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} #{e.message}"
	searchLog.puts "#{Time.now.strftime("%-m/%-d/%y %k:%M:%S")} #{e.backtrace.inspect}"
ensure
	$response.setStatus 500
	begin
		#Try close searchLog and case
		searchLog.close
		currentCase.close
	rescue
	end
end
