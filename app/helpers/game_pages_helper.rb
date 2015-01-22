module GamePagesHelper

def feeling_this(this="")
	if this.empty?
		@test = "no"
		return @test
	else	
		@test = this
		return @test	
	end
end


end
