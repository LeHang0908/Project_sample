Rails.application.routes.draw do

  get "login" => "session#new"
  post    "login"    => "session#create"
  delete  "logout"   => "session#destroy"

  resources :users

  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/help'
  #get  '/help',    to: 'static_pages#help'

  get  'static_pages/about'

  get  'static_pages/contact'

  #post 'users/create'


  #get  '/signup',  to: 'users#new'

  root 'static_pages#home'

  #root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
