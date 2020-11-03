Rails.application.routes.draw do
 root 'top#main'
 get 'top/main'
 resources :products
 resources :cart_items, only: [:create, :destroy]
 resources :carts, only: [:show]
 
 #delete 'cart_items/:id', to: 'cart_items#destroy'
 #post 'carts/show/:id', to: 'carts#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
