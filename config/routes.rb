Rails.application.routes.draw do

  # root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :posts
  
  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'

end
