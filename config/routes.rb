Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"


    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "products/:id" => "products#destroy"

    # get "/product" => "products#input_id"
    # get "/product/:my_id" => 'products#input_id_segment'
  end
  end