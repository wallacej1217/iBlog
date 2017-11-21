Rails.application.routes.draw do
  devise_for :users, :controllers => { sign_up: 'sign_up' }
  resources :users
  get 'welcome/index'

resources :articles do
  resources :comments

  resources :sessions, only: [:create]
  get '/signin', to: 'sessions#new'
  post '/logout', to: 'sessions#logout'
  
end

  root 'welcome#index'
end
