Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get '/bookmarks', to: 'bookmarks#index'

  # Route to the new action
  get '/bookmarks/new', to: 'bookmarks#new'

  get '/bookmarks/:id', to: 'bookmarks#show', as: 'bookmark'

  post '/bookmarks', to: 'bookmarks#create'

    # HTTP GET Request to get the FORM for updating ONE EXISTING bookmark
  get '/bookmarks/:id/edit', to: 'bookmarks#edit', as: 'edit_bookmark'

  patch '/bookmarks/:id', to: 'bookmarks#update'

    # HTTP DELETE Request
  delete '/bookmarks/:id', to: 'bookmarks#destroy'


  resources :bookmarks



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
