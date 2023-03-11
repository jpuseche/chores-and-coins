Rails.application.routes.draw do
  get "/dashboard", to: "dashboard#index"

  root "dashboard#index"

  get "/activities", to: "activities#index"
end
