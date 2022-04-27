Rails.application.routes.draw do
  # Homepage
  root to: "main#index"

  # to about page
  get "about", to: "about#index", as: :about #looks for "about" in controller folder

  # to sign-up page
  get "sign_up", to: "registrations#new", as: :sign_up

  # POST request to access users
  post "sign_up", to: "registrations#create"

  # to sign-in page
  get "sign_in", to: "sessions#new"

  # POST request to access users
  post "sign_in", to: "sessions#create"

  # to log out
  delete "logout", to: "sessions#destroy"

  # to access password
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # if user forgets password
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
end
