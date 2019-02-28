Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/view_product" => "products#product_list"
    get "/product_one" => "products#product_one"
    get "/product_three" => "products#product_three"

    get "/product" => "products#input_id"
    get "/product/:my_id" => 'products#input_id_segment'
  end
  end