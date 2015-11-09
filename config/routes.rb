Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  
  get '/application/index'
  get ':application/index', :controller => 'application', :action => 'show', :as=>'index'  
  
  get '/application/query_doctores' => 'application#query_doctores'
  get ':application/query_doctores', :controller => 'application', :action => 'show', :as=>'query_doctores' 
  
  get '/application/query_receta' => 'application#query_receta'
  get ':application/query_receta', :controller => 'application', :action => 'show', :as=>'query_receta'
  
  get '/application/query_localizacion' => 'application#query_localizacion'
  get ':application/query_localizacion', :controller => 'application', :action => 'show', :as=>'query_localizacion'
  
  get '/application/query_comentarios' => 'application#query_comentarios'
  get ':application/query_comentarios', :controller => 'application', :action => 'show', :as=>'query_comentarios'
  
   
 
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
