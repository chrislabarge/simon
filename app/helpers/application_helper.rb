module ApplicationHelper

	def test
		File.open("app/models/high_scores.txt", "w+") do |f|
			f.puts "chris"
			f.puts "labarge"
			f.puts 12
		end
	end

	def set_array
		array = []
		
		high_scores = File.open("app/models/high_scores.txt", "r")
		lines = high_scores.readlines
		high_scores.close
		
		lines.each{ |line| array.push(line.chomp) }
		
		return array
		
	end
	
	
	
	


end
