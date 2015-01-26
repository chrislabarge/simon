

class GamePagesController < ApplicationController
  
  #######################

  
  def home
  	
  end
  
  
  def play
  		what  = fork{ exec 'omxplayer', '/pi_stuff/red.mp3' }
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




end