Rails.application.routes.draw do

  # root to: 'visitors#index'
  devise_for :users
  resources :users

  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'
  get 'sandbox', to: 'visitors#sandbox'

  get 'data_simply', to: 'portfolio#data_simply'
  get 'website_portfolio', to: 'portfolio#website_portfolio'

  resources :posts, only: [:new, :index, :create]
  resources :posts, :path=>'', except: [:new, :index, :create]
end
