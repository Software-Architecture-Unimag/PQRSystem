Rails.application.routes.draw do
  resources :answers
  resources :statuses
  resources :logs
  resources :notifications
  resources :pqrs
  resources :pqr_files
  get 'users/index'
  devise_for :users
  resources :users
  resources :departments
  resources :rols
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
