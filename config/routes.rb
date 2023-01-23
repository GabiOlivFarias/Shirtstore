Rails.application.routes.draw do
  post "products" => "products#create"
  root "products#index"
  get "products/new" => "products#new_product"
end
