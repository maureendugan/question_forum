StackOverflow::Application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users
  resources :questions
  resources :responses


end
