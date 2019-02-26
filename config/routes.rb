Rails.application.routes.draw do
  resources :plants
  resources :positions
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'positions#new'

  get '/users' => 'users#index'
  get '/users/:id/approve' => 'users#approve', as: :approve_user
end
