Rails.application.routes.draw do
  root "dashboard#index"

  devise_for :users

  get "/dashboard", to: "dashboard#index"
  get "/activities", to: "activities#index"
end
