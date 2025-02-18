Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[new create]
  resources :posts, only: %i[new create index]
  root 'posts#index'
end
