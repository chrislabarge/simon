Rails.application.routes.draw do


  root  'game_pages#home'
	
	get 'play' => 'game_pages#play'
	
	#match '/play', to: 'game_pages#play', via: 'get'

	get 'over' => 'game_pages#over'
	
	#match '/over', to: 'game_pages#over', via: 'get'
  
	get 'red' => 'game_pages#red'
	
	#match '/red', to: 'game_pages#red', via: 'get'
	
	get 'green' => 'game_pages#green' 
	
#	match '/green', to: 'game_pages#green', via: 'get'
 
  get 'yellow' => 'game_pages#yellow'

#	match '/yellow', to: 'game_pages#yellow', via: 'get'

	get 'blue' => 'game_pages#blue'
	
#	match '/blue', to: 'game_pages#blue', via: 'get'

	get 'scores' => 'game_pages#scores'
 
	get 'new_score' => 'game_pages#new_score'
	
	post 'new_score' => 'game_pages#write_new_score'

  
  

	

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
