Rails.application.routes.draw do
 
  #appts
  get "/appts" => "appts#index"
  get "/appts/:id" => "appts#show"
  post "/appts/" => "appts#create"
  patch "/appts/:id" => "appts#update"
  delete "/appts/:id" => "appts#destroy"

  #customers
  get "/customers" => "customers#index"
  get "/customers/:id" => "customers#show"
  post "/customers/" => "customers#create"
  patch "/customers/:id" => "customers#update"
  delete "/customers/:id" => "customers#destroy"

  #pets
  get "/pets" => "pets#index"
  get "/pets/:id" => "pets#show"
  post "/pets/" => "pets#create"
  patch "/pets/:id" => "pets#update"
  delete "/pets/:id" => "pets#destroy"

  #users
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users/" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
end
