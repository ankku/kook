Kook::Application.routes.draw do
  
  root :to => 'home#index', :as => 'home', :action => 'show'


  get 'admin' => 'admin#index'
  
  resources :users


  resources :events

  match '/recommended' => 'events#recommended', :via => [:get]
  match '/browse' => 'events#browse', :via => [:get]
  match '/my_events' => 'events#my_events', :via => [:get]
  match '/create' => 'events#new', :via => [:get]

  resources :events do
    collection { post :search, to: 'events#browse' }
  end


  resources :event_logos


  resources :sessions

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :destroy
  end

  get "sessions/create"
  get "sessions/destroy"


  match '/faq' => 'static_pages#faq', :via => [:get]
  match '/about' => 'static_pages#about', :via => [:get]
  match '/contact' => 'static_pages#contact', :via => [:get]
  

  resources :restrictions


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
