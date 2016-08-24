Rails.application.routes.draw do


  devise_for :users
  root 'home#index'
  get 'home/index'

  # map
  get 'cmap/map'
#  get 'cmap/map/:lat&:lng' => 'cmap#map'
  get 'cmap/fuck'

  get 'showme/index'
  get 'showme/new'
  post 'showme/create' => "showme#create"
  get 'showme/:id' => "showme#show"

  get  'edit/:id' => "showme#edit",as: "edit"
  post 'update/:id' => "showme#update",as: "update"
  delete 'destroy/:id' => "showme#destroy",as: "destroy"
  # 코드 합칠 때 :id 식으로 바꿔주삼
  #get 'soundcloud/connect'
  #get 'soundcloud/connected'
  #get 'soundcloud/destroy'

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
