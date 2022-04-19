Rails.application.routes.draw do
  # Homepage
  root to: "main#index"

  # to about page
  get "about", to: "about#index", as: :about #looks for "about" in controller folder

  # to sign-up page
  get "sign_up", to: "registrations#new", as: :sign_up

  # POST request to access users
  post "sign_up", to: "registrations#create"

  # to log out
  delete "logout", to: "sessions#destroy"
end
