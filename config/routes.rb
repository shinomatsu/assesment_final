Rails.application.routes.draw do

  root 'users#new'
  

  resource :session, controller: "sessions", only: [:new, :create, :destroy ]

  get "/sign_in" => "sessions#new", as: "sign_in"
  post "/sign_in" => "session#create"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"

  resources :users, only: [:create, :index, :update ,:show, :edit]
  get "/sign_up"=> "users#new", as: "sign_up"

end
