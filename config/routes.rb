Rails.application.routes.draw do
  get 'home/login'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#login'
  resources :boards
  resources :comments, only: %i[create destroy]
end
