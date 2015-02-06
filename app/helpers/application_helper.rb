
module ApplicationHelper

	#require 'pi_piper'
	 
 @@red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
 @@green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
	
 @@blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
 @@yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
 
 
 
 @@pattern = []
 @@turns_left = []		
 @@loop = [@@red,@@blue,@@yellow,@@green]	 	
 
 	
 def light_loop

 	for light in @@loop
 		light.on
 		sleep 0.1
 		light.off
 	end
 end	

 def light_loop_reverse
		for light in @@loop.reverse
			light.on
			sleep 0.1
			light.off
		end 
 end
 
def all_lights
	 
 	what  = fork{ exec 'mpg123', "app/assets/game_over.mp3" }
	
	5.times do light_loop end
	5.times do light_loop_reverse end
end

	
 def new_color
 	colors = ["red", "green", "blue", "yellow"]
 	return colors.sample
 end
 

 def restart
 		@@game_over = false
 		@@pattern = []
	  @@turns_left = []
 		@@time = [0.5,0.55,0.6,0.7,0.8,0.9,1,1.10,1.25,1.5,2]
 end
 
 
 def game_over 
 	return @@game_over
 end
 
 def pattern
 		return @@pattern
 end
 
	def turns_left
		return @@turns_left 	
	end
	
 def light_and_audio(light_array)
 		@@add = -1 
 		sleepy = @@time.pop
 		for i in light_array
 			@@add += 1
 			audio = "app/assets/#{@@pattern[@@add]}.mp3"
 			what  = fork{ exec 'mpg123', audio }
 			i.on 
 			
      
      
       
 			sleep(sleepy)
 			i.off
 			sleep(0.1)
 		end 
 end

def add
 return @@add
 
end
 
 def make_light_array
 		light_array = []
 		
 	
 	for i in @@pattern 
 		if i == "red" 
 			light_array.push(@@red)
 		elsif i == "green"
 			light_array.push(@@green)
 		elsif i == "blue" 
 			light_array.push(@@blue)
 		elsif i == "yellow"
 			light_array.push(@@yellow)
 		else 
 			nil
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
 		@@game_over = true
 	end
 end
 

def score
 return	(@@pattern.count) - 1
end

 
			

 
	  
 		
 
 

end
