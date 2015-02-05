

class GamePagesController < ApplicationController
  
  #######################

  
  def home
  	
  end
  
  
  def play

  end
	
	def over
	#		set_high_scores #this is so i can access the high_scores array
	#		for i in @@high_scores do
	#		 if i.to_i < score
	 # 		return @@high_scores.index(i)
	 	#	 else
	 	#		nil
	 	#	 end 
	  
	  #	end 

	end

  ####################


	def red
	
	end		
	
	def blue
	end
	
	def green
		
	end
	
	def yellow
	end	

######################

	def scores
		@high_score_array = []
		@high_scores = []
		@high_names = []	
	
	
  	high_txt = File.open("app/models/high_scores.txt", "r")
		lines = high_txt.readlines
		high_txt.close
		
		lines.each{ |line| @high_score_array.push(line.chomp) }
		
		@high_names = @high_score_array[0..9]
		@high_scores = @high_score_array[10..19]
	
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
		
		redirect_to scores_path 
	end



end