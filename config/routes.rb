HaXeCasts::Application.routes.draw do
  

  get "comments/index"

  get "fullscreen/index"

  get "about/index"

  resources :badges

#  resources :resource_urls
#  resources :code_examples
#  resources :comments
  resources :video_casts
  
#  resources :video_casts do
#      resources :comments
#  end

  get "no_access/index"
  get "admin/index"
 
  devise_for :users
  
  resources :users do
    member do
      get 'crop'
      put 'crop_update'
    end
    resources :comments
  end
  
  resources :video_casts do
    member do
      get 'crop'
      put 'crop_update'
    end
    resources :resource_urls
    resources :code_examples
    resources :comments
    resources :flash_files
  end
  
#  get "home/index"
  root :to => "video_casts#index"
  
  resources :text_contents

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
HaXeCasts::Application.routes.draw do
  get "comments/index"

  get "fullscreen/index"

  get "about/index"

  resources :badges

  resources :flash_files

  resources :resource_urls

  resources :code_examples

  resources :comments

  resources :video_casts
  
#  resources :video_casts do
#      resources :comments
#  end

  get "no_access/index"
  get "admin/index"
 
  devise_for :users
  
  resources :users do
    member do
      get 'crop'
      put 'crop_update'
    end
    resources :comments
  end
  
  resources :video_casts do
    resources :comments
  end
  
#  get "home/index"
  root :to => "video_casts#index"
  
  resources :text_contents

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
HaXeCasts::Application.routes.draw do
  get "comments/index"

  get "fullscreen/index"

  get "about/index"

  resources :badges

  resources :flash_files

  resources :resource_urls

  resources :code_examples

  resources :comments

  resources :video_casts
  
#  resources :video_casts do
#      resources :comments
#  end

  get "no_access/index"
  get "admin/index"
 
  devise_for :users
  
  resources :users do
    member do
      get 'crop'
      put 'crop_update'
    end
    resources :comments
  end
  
  resources :video_casts do
    resources :comments
  end
  
#  get "home/index"
  root :to => "video_casts#index"
  
  resources :text_contents

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
