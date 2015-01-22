

class GamePagesController < ApplicationController
  
  #######################
  
  
  def simon_says(pattern) 
 
  
	
	#pattern.push(array.shuffle[0])
	
		green_lt =  PiPiper::Pin.new(:pin => 17, :direction => :out)
		yellow_lt =  PiPiper::Pin.new(:pin => 26, :direction => :out)
		blue_lt =  PiPiper::Pin.new(:pin => 16, :direction => :out)
		red_lt =  PiPiper::Pin.new(:pin => 23, :direction => :out)
		
 		
 		
 	
 	
 for i in pattern do
 	if i == "red" # I think i can make this a hash, so the Pin classes  above would be hashed with the :symbol
		red_lt.on #this entire if statment within the for-loop could be its own function
		sleep 1
		red_lt.off
	elsif
		i == "green"
		green_lt.on
		sleep 1
		green_lt.off
	elsif
		i == "blue"
		blue_lt.on
		sleep 1
		blue_lt.off
	elsif
		i == "yellow"		
    yellow_lt.on
    sleep 1
    yellow_lt.off 	
	end	
 end
	
end
  
  
  
  
  
  
  
  ####################
  
  
  def test
		
		
  	
  	pattern = [ "red", "yellow", "blue", "green"]
  	
  		
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
