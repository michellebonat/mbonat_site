Rails.application.routes.draw do

  devise_for :users
  resources :users

  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'

end
