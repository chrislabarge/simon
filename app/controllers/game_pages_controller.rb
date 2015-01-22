

class GamePagesController < ApplicationController
  
  #######################
  
  
  def simon_says(pattern) 
 
  
	
	#pattern.push(array.shuffle[0])
	
	
		
 		
 		 
 	
 	
 for i in pattern do
 	if i == red
# 		red = PiPiper::Pin.new(:pin => 23, :direction => :out)
		red.on
		sleep 1
		red.off
	elsif
		i == green
	#	green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
		green.on
		sleep 1
		green.off
	elsif
		i == blue
	#	blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
		blue.on
		sleep 1
		blue.off
	elsif
		i == yellow		
   # yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
    yellow.on
    sleep 1
    yellow.off 	
	end	
 end
	
end
  
  
  
  
  
  
  
  ####################
  
  
  def test
		
		green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
		yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
		blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
		red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
  	
  	pattern = [ red, yellow, blue, green]
  	
  		
  	simon_says(pattern)
  	
  	redirect_to root_path
  end
  
  
  
  def play
  	
  end

	def red
		
		@red =  PiPiper::Pin.new(:pin => 23, :direction => :out)		 
	  
	  @red.on
	 	
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
	
	def rihanna
		green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
		yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
		blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
		red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
		
		colors = [red, blue, yellow, green]
		backwords =[ green, yellow, blue, red] #this can just be an array method like [array].reverse
		
		for light in colors do
			light.on 
			sleep 0.1
			light.off
		end
		
		for light in colors do
			light.on 
			sleep 0.1
			light.off
		end
			
		for light in colors do
			light.on 
			sleep 0.1
			light.off
		end
		
		for light in backwords do
			light.on 
			sleep 0.1
			light.off
		end
		for light in backwords do
			light.on 
			sleep 0.1
			light.off
		end
		for light in backwords do
			light.on 
			sleep 0.1
			light.off
		end
		
	
	#flashy#############################
	
		for light in colors do
			light.on
		end
		
		sleep 0.1
		
		for light in colors do
			light.off
		end
		
		sleep 0.1
		
		for light in colors do
			light.on
		end
		
		sleep 0.1
		
		for light in colors do
			light.off
		end
		
		sleep 0.1
		
		for light in colors do
			light.on
		end
		
		sleep 0.1
		
		for light in colors do
			light.off
		end		
		
		sleep 0.1
		
		for light in colors do
			light.on
		end
		
		sleep 0.1
		
		for light in colors do
			light.off
		end
		
		sleep 0.1
		
		for light in colors do
			light.on
		end
		
		sleep 0.1
		
		for light in colors do
			light.off
		end
		
		sleep 0.1
		
		for light in colors do
			light.on
		end
		
		sleep 0.1
		
		for light in colors do
			light.off
		end		 	
		
		redirect_to root_path
				
		end
		
		
		
		
	
	
end
