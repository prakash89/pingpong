Rails.application.routes.draw do


  # get 'welcome/index'
  root :to => 'welcome#index'
  get '/contact' => 'welcome#contact', :as => :contact
  post '/email_contact' => 'welcome#email_contact', :as => :email_contact
  get '/participents' => 'welcome#participents', :as => :participents
  get '/result' => 'welcome#result', :as => :result
  get '/shedule' => 'welcome#shedule', :as => :shedule
  get '/today_match' => 'welcome#today_match', :as => :today_match
  get '/organizer' => 'welcome#organizer', :as => :organizer
  get '/match_pdf' => 'welcome#match_pdf', :as => :match_pdf
  get "log_out" => "sessions#destroy", :as => "log_out"

  resources :users, :only => [:create]
  resources :sessions
  resources :contests
  resources :matches
  resources :comments

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
