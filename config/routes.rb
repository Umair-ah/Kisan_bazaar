Rails.application.routes.draw do
  get "/signup", to: "users#signup_page"
  post "/signup", to: "users#signup"

  get "/login", to: "users#login_page"
  post "/login", to: "users#login"


  root "pages#index"
end
