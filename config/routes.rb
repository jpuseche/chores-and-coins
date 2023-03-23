Rails.application.routes.draw do
  root "dashboard#index"
  devise_for :users

  namespace :admin do
    resources :activities
    get "/activities/:id/assign_task", to: "activities#assign_task", as: "assign_task"

    get "/sons", to: "sons#index"
    post "/sons", to: "sons#create", as: "create_child"
    get "/sons/new", to: "sons#new"
  end
end