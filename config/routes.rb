Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[new create]
  root 'posts#index'
end
