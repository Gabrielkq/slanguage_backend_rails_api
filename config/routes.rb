Rails.application.routes.draw do
  resources :definitions
  resources :words
  resources :users

  post "/login", to: "login#create"
  get "/auto_login", to: "login#auto_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
