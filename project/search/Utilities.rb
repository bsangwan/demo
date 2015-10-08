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

class String
	def to_bool
    	return true if self =~ (/^(true|yes)$/i)
    	return false
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
