Rails.application.routes.draw do
  devise_for :users, :controllers => { sign_up: 'sign_up' }
  resources :users
  get 'welcome/index'

resources :articles do
  resources :comments
end

  root 'welcome#index'
end
