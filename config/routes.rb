Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #PRODUCTS
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    # SUPPLIERS
    get "/suppliers" => "suppliers#index"
    post "/suppliers" => "suppliers#create"
    get "/suppliers/:id" => "suppliers#show"
    patch "/suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"
    #USERS
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    #SESSIONS
    post "/sessions" => "sessions#create"
    #ORDERS
    post "/orders" => "orders#create"
    #CART
    get "/carts" => "carted_products#index"
    post "/carts" => "carted_products#create"
  end
end
