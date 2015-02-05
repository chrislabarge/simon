module GamePagesHelper
	


def high_index
	
	for i in @high_scores do
	 if i.to_i < score
	  return @high_scores.index(i)
	 else
	 	nil
	 end 
	end 
		
end	



end
