Rails.application.routes.draw do
  # Homepage
  root to: "main#index"

  # GET to /about
  get "about", to: "about#index", as: :about #looks for "about" in controller folder
end
