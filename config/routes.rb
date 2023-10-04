Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  root to: "posts#index"

  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  resources :users do
    member do
      get 'feed' # This sets up a route like /users/:id/feed
    end
  end

  resources :relationships, only: [:create, :destroy]
end
