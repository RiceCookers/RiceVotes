Rails.application.routes.draw do
  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'issue#index'

  resources :issues do
    resources :votes, only: :create
  end
end
