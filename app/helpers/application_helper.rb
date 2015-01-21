module ApplicationHelper
 
 
 
 		
 		 @red =  PiPiper::Pin.new(:pin => 23, :direction => :out)
		 @green =  PiPiper::Pin.new(:pin => 17, :direction => :out)
		 @blue =  PiPiper::Pin.new(:pin => 16, :direction => :out)
		 @yellow =  PiPiper::Pin.new(:pin => 26, :direction => :out)
	  
 		
 def circle(one,two,three,four, time)
	one.on
	sleep time
	one.off
	two.on
	sleep time
	two.off
	three.on
	sleep time
	three.off
	four.on
	sleep time
	four.off
end

def party(one, two, three, four, time)
 one.on
 two.on
 three.on
 four.on
 sleep time
 one.off
 two.off
 three.off
 four.off	
 sleep time	
end

def party_time
	5.times do circle @red, @blue, @yellow, @green, 0.1 
	end
	5.times do circle @red, @green, @yellow, @blue, 0.1
	end
	10.times do party @red, @green, @yellow, @blue, 0.1
	end
end
 
 

end
