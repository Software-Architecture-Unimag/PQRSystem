Rails.application.routes.draw do
  devise_for :users
  resources :departments
  resources :rols
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
