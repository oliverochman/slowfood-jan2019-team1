Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  devise_for :users
  root controller: :products, action: :index
  resources :products, only: [:index, :show]
end
