Rails.application.routes.draw do
  namespace :api do
    #users
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    #items
    get "/items" => "items#index"
    get "/items/:id" => "items#show"
    post "/items" => "items#create"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"

    #locations
    get "/locations" => "locations#index"
    get "/locations/:id" => "locations#show"
    post "/locations" => "locations#create"
    patch "/locations/:id" => "locations#update"
    delete "/locations/:id" => "locations#destroy"

    #SESSIONS
    post "/sessions" => "sessions#create"
  end
end
