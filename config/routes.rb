Rails.application.routes.draw do



  scope :api do

    post '/register', to: 'authentications#register'
    post '/login', to: 'authentications#login'

    resources :users
    resources :reviews
    resources :tenders
    resources :projects
    resources :conversations, only: [:index, :create, :show] do
      resources :messages, only: [:index, :create]
    end
  end
end
