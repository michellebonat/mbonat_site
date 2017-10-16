Rails.application.routes.draw do

  # root to: 'visitors#index'
  devise_for :users
  resources :users

  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'
  get 'sandbox', to: 'visitors#sandbox'

  get 'data_simply', to: 'portfolio#data_simply'
  get 'website_portfolio', to: 'portfolio#website_portfolio'
  get 'blocipedia', to: 'portfolio#blocipedia'
  get 'my_money_butler', to: 'portfolio#my_money_butler'
  get 'oracle_financial_apps', to: 'portfolio#oracle_financial_apps'
  get 'bitparrot', to: 'portfolio#bitparrot'
  get 'stompbox_tunes', to: 'portfolio#stompbox_tunes'
  get 'find_devs', to: 'portfolio#find_devs'

  resources :posts, only: [:new, :index, :create]
  resources :posts, :path=>'', except: [:new, :index, :create]
end
