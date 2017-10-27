Rails.application.routes.draw do
  resources :carts
  root 'store#index', as: 'store_index'

  resources :buyers
  resources :foods
  resources :line_items
  
  get 'home/goodbye'

  get 'home/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
