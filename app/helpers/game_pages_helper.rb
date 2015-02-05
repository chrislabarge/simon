module GamePagesHelper
	


def high_index(high_scores)
	
	for i in high_scores do
	 if i.to_i < score
	  return high_scores.index(i)
	 else
	  nil
	 end 
		return false
	end 
		
end	



end
