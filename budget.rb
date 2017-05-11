require "json"



def jsonRead(input)
	parser = nil
	File.open(input,'r') do |f|
		reader = f.read()
		parser = JSON.parse(reader)
	end
	return parser
end


def jsonWrite(input,data)	
	reader = jsonRead(input)
	reader = reader.merge(data)
	reader = JSON.generate(reader)
	File.open(input,'r+') do |f|
		f.write(reader)
	end
	return 0 
end	 
