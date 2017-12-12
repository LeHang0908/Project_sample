Rails.application.routes.draw do

  get "login" => "session#new"
  post    "login"    => "session#create"
  delete  "logout"   => "session#destroy"

  resources :users

  get "users/new"

  get "static_pages/home"

  get "static_pages/help"

  get  "static_pages/about"

  get  "static_pages/contact"

  root "static_pages#home"

end
