Rails.application.routes.draw do

  get "/posts" => "posts#index"
  get "/posts/:id" => "posts#show"
  post "/posts" => "posts#create"
  delete "/posts/:id" => "posts#destroy"

  post "/votes" => "votes#create"
  patch "/votes/:id" => "votes#update"

  post "/users" => "users#create"
end
