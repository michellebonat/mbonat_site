Rails.application.routes.draw do

  get 'contact/new'

  # root to: 'visitors#index'
  devise_for :users
  resources :users

  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'
  get 'speak', to: 'visitors#speak'
  get 'sandbox', to: 'visitors#sandbox'

  get 'data_simply', to: 'portfolio#data_simply'
  get 'website_portfolio', to: 'portfolio#website_portfolio'
  get 'blocipedia', to: 'portfolio#blocipedia'
  get 'my_money_butler', to: 'portfolio#my_money_butler'
  get 'oracle_financial_apps', to: 'portfolio#oracle_financial_apps'
  get 'bitparrot', to: 'portfolio#bitparrot'
  get 'stompbox_tunes', to: 'portfolio#stompbox_tunes'
  get 'find_devs', to: 'portfolio#find_devs'
  get 'ml_project', to: 'portfolio#ml_project'

  resources :posts, only: [:new, :index, :create]
  resources :posts, :path=>'', except: [:new, :index, :create]
  resources :contacts, only: [:new, :create]
end
