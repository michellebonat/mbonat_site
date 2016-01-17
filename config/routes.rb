Rails.application.routes.draw do
  root to: 'visitors#index'
  # (main_app||self).root_path

  devise_for :users
  resources :users
end
