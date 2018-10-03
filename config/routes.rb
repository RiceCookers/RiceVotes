Rails.application.routes.draw do
  devise_for :admin_users
  root 'home#index'

  resources :issues
end
