Rails.application.routes.draw do
  resources :negotiations
  get "/index_negotiations", to: "negotiations#index_negotiations"


  resources :proposals


  get "/signup", to: "users#signup_page"
  post "/signup", to: "users#signup"

  get "/login", to: "users#login_page"
  post "/login", to: "users#login"

  delete "/logout", to: "users#logout"

  get "/settings", to: "users#settings"
  post "/settings", to: "users#settings_save"



  root "pages#index"
end
