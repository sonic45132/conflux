# == Route Map
#
#       Prefix Verb   URI Pattern                  Controller#Action
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     torrents GET    /torrents(.:format)          torrents#index
#              POST   /torrents(.:format)          torrents#create
#  new_torrent GET    /torrents/new(.:format)      torrents#new
# edit_torrent GET    /torrents/:id/edit(.:format) torrents#edit
#      torrent GET    /torrents/:id(.:format)      torrents#show
#              PATCH  /torrents/:id(.:format)      torrents#update
#              PUT    /torrents/:id(.:format)      torrents#update
#              DELETE /torrents/:id(.:format)      torrents#destroy
#         root GET    /                            static_controller#home
#         home GET    /home(.:format)              static_controller#home
#        about GET    /about(.:format)             static_controller#about
#        sites GET    /sites(.:format)             static_controller#sites
#

Rails.application.routes.draw do
  resources :users

  resources :torrents

  root 'static_controller#home'

  get 'home' => 'static_controller#home'

  get 'about' => 'static_controller#about'

  get 'sites' => 'static_controller#sites'

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
