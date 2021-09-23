Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create]
  end
end
