Rails.application.routes.draw do

  resources :products
  
  get "kayit", to: "kayit#new"
  post "kayit", to: "kayit#create"
  delete "erase", to: "kayit#destroy"

  get "giris", to: "sessions#new"
  post "giris", to: "sessions#create"

  delete "cikis", to: "sessions#destroy"

  post "products/add_to_cart/:id", to: "products#add_to_cart", as: "add_to_cart"
  delete "products/remove_from_cart/:id", to: "products#remove_from_cart", as: "remove_from_cart"

  get "buy", to: "buy#new"
  post "buy", to: "buy#create"

  get '/payment' => 'payment#index', as: :payment
  get '/card/new' => 'payment#new_card', as: :add_payment_method
  post '/card' => 'payment#create_card', as: :create_payment_method
  get '/success' => 'payment#success', as: :success

  get "subscription", to: "subscription#new"

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end