Rails.application.routes.draw do

  # root to: 'visitors#index'
  devise_for :users
  resources :users


  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'
  
  resources :posts

end
