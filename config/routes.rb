Rails.application.routes.draw do
  resources :proposals
  get "/signup", to: "users#signup_page"
  post "/signup", to: "users#signup"

  get "/login", to: "users#login_page"
  post "/login", to: "users#login"

  delete "/logout", to: "users#logout"


  root "pages#index"
end
