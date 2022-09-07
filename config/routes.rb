Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #GET /me: run the UsersController#show method
  get "/me", to: "users#show"

  #POST /login: run the SessionsController#create method
  post "/login", to: "sessions#create"
  #DELETE /logout: run the SessionsController#destroy method
  delete "/logout", to: "sessions#destroy"

end
