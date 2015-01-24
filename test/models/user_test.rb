require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(pattern:["red"], turns_left:["red"])
  end
	
	test "should be valid" do
		assert @user.valid?
	end
	
	#test "pattern should be present" do
	#		@user.pattern = [ ]
	#		assert_not @user.valid?
	#end

end
