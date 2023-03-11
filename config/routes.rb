Rails.application.routes.draw do
  get "/dashboard", to: "dashboard#index"

  root "dashboard#index"

  resources :activities
end
