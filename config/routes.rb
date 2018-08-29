Rails.application.routes.draw do

  get 'users/register'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:register, :create]
  resources :books
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
