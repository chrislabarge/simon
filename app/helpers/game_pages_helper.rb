module GamePagesHelper
	


def high_index(high_scores)
	
	for i in high_scores do
	 
	 
	 if score > i 
	 		return high_scores.index(i)
	 elsif score < i
	 		nil
	 else 
	 		false
	 end		
			
	end 
		
end	



end
