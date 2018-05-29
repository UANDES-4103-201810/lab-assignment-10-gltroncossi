Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: {:omniauth_callbacks=> "callbacks"}
  root to: "home#index"

  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
