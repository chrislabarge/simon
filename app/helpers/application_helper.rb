module ApplicationHelper

	@@high_score_array = []
	@@high_names = []
	@@high_scores = []

	
	
	
	
	def test
		File.open("app/models/high_scores.txt", "w+") do |f|
			f.puts "chris"
			f.puts "labarge"
			f.puts 12
		end
	end

	def set_high_scores
		
		
		high_txt = File.open("app/models/high_scores.txt", "r")
		lines = high_txt.readlines
		high_txt.close
		
		lines.each{ |line| @@high_score_array.push(line.chomp) }
		
		@@high_names = @@high_score_array[0..9]
		@@high_scores = @@high_score_array[10..19]			
		
		return nil
		
	end
	
	def high_names 
		return @@high_names
	end

	def high_scores
		return @@high_scores
	end	
	


end
