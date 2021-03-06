Rails.application.routes.draw do
  
  get '/new/:time' =>'marker#new'
  
  resources :markers

  resources :gritty2s

  devise_for :users
  get 'cart/clear'

  get '/add/:id' =>'cart#add'
  
  get '/remove_item/:id/:qty' =>'cart#remove_item'
  
  post 'update_quantity/:id' =>'cart#update_quantity'

  get 'cart/index'

  resources :products

  resources :projects do
     resources :tasks do
       member do
         patch :mark_as_complete
         patch :mark_as_incomplete
       end
    end
  end

  resources :objectives do
    member do 
      get :mark_as_complete
      post :mark_as_incomplete
    end
    
    collection do
      get :piano
      get :bass
      get :drums
      get :guitar
      get :beats
      get :mark_all_as_incomplete
    end
    
  end

  get 'pages/gritty'
  get 'pages/gritty2'
  
  root 'objectives#beats'

  get 'pages/practice1'

  get 'pages/practice2'
  


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
