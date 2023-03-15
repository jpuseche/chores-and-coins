Rails.application.routes.draw do
  root "dashboard#index"

  resources :activities

  devise_for :users

  get "/dashboard", to: "dashboard#index"
  get "/activities", to: "activities#index"
  get "/income", to: "income#index"

  get "/activities/:id/assign_task", to: "activities#assign_task", as: "assign_task"
end
