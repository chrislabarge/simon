
module ApplicationHelper

	#require 'pi_piper'
	 
 @@pattern = []
 @@turns_left = []		
 
 test = []		
 def new_color
 	colors = ["red", "green", "blue", "yellow"]
 	return colors.sample
 end
 

 def restart
 		@@pattern = []
	  @@turns_left = []
 end
 
 
 
 
 def pattern
 		return @@pattern
 end
 
	def turns_left
		return @@turns_left 	
	end
	
 
 
		
 
 def add_new_color
 	if @@turns_left.empty? 	
 	
 		color = new_color
 	
 		@@pattern.push(color)
 		for i in @@pattern
 			@@turns_left.push(i)
 		end	
  else 
  	nil
  end 	
 end
 
 def shift_turns(color)
 	if @@turns_left[0] == color
 		@@turns_left.shift
 	else
 		nil
 	end
 end
 



 
			

 	#	 @red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
	#	 @green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
	
	#	 @blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
	#	 @yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
	  
 		
 
 

end
