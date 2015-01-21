class GamePagesController < ApplicationController
  
  	
  
  
  
  def play
  	
  end

	def red
	 
	  red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
	  red.on
	 	
	 redirect_to root_path
	
  end
  
  def red_off
			
	  red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
	  red.off
	 
	 redirect_to root_path
	
  end
	
	def green
		
		green =  PiPiper::Pin.new(:pin => 17, :direction => :out)	
		green.on
		
		redirect_to root_path
	
	end
	
	def green_off
		
		green =  PiPiper::Pin.new(:pin => 17, :direction => :out)	
		green.off
		redirect_to root_path
	end
	
	def yellow
		yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)	
		yellow.on		
		redirect_to root_path
	end	
	
	def yellow_off
		yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)	
		yellow.off		
		redirect_to root_path
	end
	
	def blue
		blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)	
		blue.on		
		redirect_to root_path
	end
	
	def blue_off
		blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)	
		blue.off		
		redirect_to root_path
	end
	
	
end
