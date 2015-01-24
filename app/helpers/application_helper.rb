module ApplicationHelper
 
 @@pattern = []
	
 def new_color
 	colors = ["red", "green", "blue", "yellow"]
 	return colors.sample
 end
 
 def heyo
 		
		return @@pattern
 end
 
 def new_pattern
	@@pattern = ["red"] #eventually it will just be the new_color function 
 end			
 
 def add_new_color
 	@@pattern.push(new_color)
 end
 		
	def red_on
		red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
		red.on
	end	
	
	def red_off
		red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
		red.off
	end
			

 	#	 @red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
	#	 @green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
	
	#	 @blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
	#	 @yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
	  
 		
 
 

end
