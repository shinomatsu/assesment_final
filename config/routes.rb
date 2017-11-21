Rails.application.routes.draw do

  get "/search" => "hotels#search"
  
  root 'hotels#index'
  
 #sign_up/in/out
  resource :session, controller: "sessions", only: [:new, :create, :destroy ]

  get "/sign_in" => "sessions#new", as: "sign_in"
  post "/sign_in" => "session#create"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"

  resources :users, only: [:index,:update, :show, :edit]

  get "/sign_up"=> "users#new", as: "sign_up"
  post "/sign_up"=> "users#create"

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

 #sign_up/in/out

 resources :reviews, only: [:show, :edit, :update, :destroy]

 resources :hotels do
   resources :reviews,only:[:new, :create]
 end


end
