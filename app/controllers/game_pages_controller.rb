class GamePagesController < ApplicationController
  	
  	
  def set_high_scores
		high_score_array = []
		
		high_txt = File.open("app/models/high_scores.txt", "r")
		lines = high_txt.readlines
		high_txt.close
		
		lines.each{ |line| @@high_score_array.push(line.chomp) }
		
				
		return nil
		
	end
  
 
  
  
  def play
  	
  end
	
	def home
	end
	 
	def scores
	end
	
	def new_score
		
	
		
	end
	
	def write_new_score
		name = params[:name]
		score = params[:score]
		index = params[:index].to_i
		array = []
		
		high_txt = File.open("app/models/high_scores.txt", "r")
		lines = high_txt.readlines
		high_txt.close
		
		lines.each{ |line| array.push(line.chomp) }
		
		array.delete_at(9)
		
		array.pop
		
		array.insert(index, name)
		array.insert((10+index), score)
		
		
		File.open("app/models/high_scores.txt", "w+") do |f|
			 f.puts array
			
		end
		
		redirect_to root_path #this will be changed to the scores_path once everything is good.
	end
	
	
	def over
	end
	
	
end
