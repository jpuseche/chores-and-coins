Rails.application.routes.draw do
  get 'income/index'
  root "dashboard#index"

  resources :activities

  devise_for :users

  get "/dashboard", to: "dashboard#index"
  get "/activities", to: "activities#index"
  get "/income", to: "income#index"
end
