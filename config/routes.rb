# == Route Map
#
#                  Prefix Verb   URI Pattern                        Controller#Action
#  static_controller_home GET    /static_controller/home(.:format)  static_controller#home
# static_controller_about GET    /static_controller/about(.:format) static_controller#about
# static_controller_sites GET    /static_controller/sites(.:format) static_controller#sites
#                torrents GET    /torrents(.:format)                torrents#index
#                         POST   /torrents(.:format)                torrents#create
#             new_torrent GET    /torrents/new(.:format)            torrents#new
#            edit_torrent GET    /torrents/:id/edit(.:format)       torrents#edit
#                 torrent GET    /torrents/:id(.:format)            torrents#show
#                         PATCH  /torrents/:id(.:format)            torrents#update
#                         PUT    /torrents/:id(.:format)            torrents#update
#                         DELETE /torrents/:id(.:format)            torrents#destroy
#

Rails.application.routes.draw do
  get 'static_controller/home'

  get 'static_controller/about'

  get 'static_controller/sites'

  resources :torrents

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
