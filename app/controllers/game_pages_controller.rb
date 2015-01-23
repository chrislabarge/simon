

class GamePagesController < ApplicationController
  
  #######################

  
  def home
  	@user = User.create(pattern:["red"])
  end
  
  
  def play
  		
  end


  ####################

	
	def red
		
	end
	
	def yellow
	end
	
	def green
	end
	
	def blue
	end


end