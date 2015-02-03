module ApplicationHelper

	@@high_score_array = []
	@@high_names = []
	@@high_scores = []
	@@poop = ["hey","test",1,2,3]
	@@high_index = 2
	
	
	
	def test
		File.open("app/models/high_scores.txt", "w+") do |f|
			 f.puts @@poop
			
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
	
	def high_index
		@@high_index
	end
	


end
