Rails.application.routes.draw do
  devise_for :users
  # resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :rooms, only: %i[show create], param: :title
  resources :messages, only: :create
  root "rooms#index"

end
