
require "json"
require "open-uri"

def search_movies(parametr)
    uri = "http://0.0.0.0:3001/movies/find?query=" + parametr
    response = open(uri).read
    response = JSON.parse(response)
    response.each do |element|
	puts element["title"]
    end
end


def go_to_search(line)
	if line[0].eql? "searchdata"
		search_movies(line[1])
	else
		puts "command not found"
	end
	
end

while true do
	a = gets.chomp
    line = a.split(" ").map { |s| s.to_s }
	if line[0].eql? "exit"
		break
	else
		go_to_search line
	end








end
