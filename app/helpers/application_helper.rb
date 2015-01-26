
module ApplicationHelper

	#require 'pi_piper'
	 
 @@red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
 @@green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
	
 @@blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
 @@yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
 
 
 
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
	
 def light_and_audio(light_array)
 		add = 0 
 		
 		
 		
 		
 		for i in light_array
 			add += 1
 			audio = 'app/assets/' + @@pattern[add] + '.mp3'
 			i.on 
 			what  = fork{ exec 'omxplayer', audio }
      
      
       
 			sleep(1)
 			i.off
 			sleep(0.1)
 		end 
 end


 
 def make_light_array
 		light_array =[]
 		
 	
 	for i in @@pattern 
 		if i == "red" 
 			light_array.push(@@red)
 		elsif i == "green"
 			light_array.push(@@green)
 		elsif i == "blue" 
 			light_array.push(@@blue)
 		elsif i == "yellow"
 			light_array.push(@@yellow)
 		end
 	end
 	
 	light_and_audio(light_array)
 	end 
		
 
 def add_new_color
 	if @@turns_left.empty? 	
 	
 		color = new_color
 	
 		@@pattern.push(color)
 		for i in @@pattern
 			@@turns_left.push(i)
 		  
 		end	
  	
  	make_light_array
  	
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
 



 
			

 
	  
 		
 
 

end
