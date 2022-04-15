Rails.application.routes.draw do
  # GET to /about
  get "about", to: "about#index" #looks for "about" in controller folder
end
