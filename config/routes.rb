Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"

  # resources :posts
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :users do
    member do
      get 'feed' # This sets up a route like /users/:id/feed
    end
  end
end
