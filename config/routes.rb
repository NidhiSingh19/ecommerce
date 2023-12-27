Rails.application.routes.draw do
  get 'products/show'
  get 'categories/index'
  get 'categories/show'
  get 'sessions/index'
  get 'sessions/new'
  get 'home/index'
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
  # root "posts#index"
  root 'home#index'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

      resources :categories, only:[:index, :show]
      resources :products, only:[:show]
      post 'show_category', to: 'categories#show_category', as: 'show_category'

end
