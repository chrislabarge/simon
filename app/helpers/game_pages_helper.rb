module GamePagesHelper
	


def high_index(high_scores)
	index = false
	
	for i in high_scores do
	 
	 
	 if score > i 
	 		index = high_scores.index(i)
	 else 
	 		nil
	 end		
	end 
	
	return index	
end	



end
