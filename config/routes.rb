Rails.application.routes.draw do
  root to: "posts#index"
  devise_for :users

  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  resources :users do
    member do
      get 'feed' # This sets up a route like /users/:id/feed
    end
  end

  get 'users/:id/feed', to: 'users#feed', as: :user_feed

  get 'likes/create'
  get 'likes/destroy'

  resources :relationships, only: [:create, :destroy]
end
