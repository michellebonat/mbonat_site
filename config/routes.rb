Rails.application.routes.draw do

  # root to: 'visitors#index'
  devise_for :users
  resources :users

  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'
  get 'sandbox', to: 'visitors#sandbox'

  resources :posts, only: [:new, :index, :create]
  resources :posts, :path=>'', except: [:new, :index, :create]
end
