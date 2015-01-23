class User < ActiveRecord::Base

serialize :pattern, Array
serialize :turns_left, Array

	#validates :pattern, presence: true

end
