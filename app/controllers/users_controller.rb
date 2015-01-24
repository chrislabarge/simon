class UsersController < ApplicationController
  
	
	
	def random_color
		array= ["red","blue","green","yellow"]
		return array.sample
	end
	
	
	##################
	
	
	def new
  	@new_color = random_color
  	@user = User.create(pattern:[@new_color], turns_left:[@new_color])
  	redirect_to user_path(@user)
  end
	
	
	
	
	def show
		@user = User.find(params[:id]) #this is just a short cut
		
		
	end



	#######################
	#if empty
		
	def empty_turn(user)	
		if user.turns_left.empty?
			@new_color = random_color
			user.pattern.push(@new_color) #adds one more to the pattern
		  user.turns_left = user.pattern #sets the empty array back to full pattern
		
			
		else	
			nil
		end
	end
	
	
	
	##################
	def red
      @user = User.first
	    if @user.turns_left[0] == "red"
				@user.turns_left.shift
				empty_turn(@user)
				@user.save
				redirect_to user_path
			else	
				redirect_to root_path
		end
			

	end
	
	def green
		@user = User.first
	    if @user.turns_left[0] == "green"
				@user.turns_left.shift
				empty_turn(@user)
				@user.save
				redirect_to user_path
			else	
				redirect_to root_path
		end
	end
	
	def yellow
		  @user = User.first
	    if @user.turns_left[0] == "yellow"
				@user.turns_left.shift
				empty_turn(@user)
				@user.save
				redirect_to user_path
			else	
				redirect_to root_path
		end
	end
	
	def blue
		@user = User.first
	    if @user.turns_left[0] == "blue"
				@user.turns_left.shift
				empty_turn(@user)
				@user.save
				redirect_to user_path
			else	
				redirect_to root_path
		end
	end

end
