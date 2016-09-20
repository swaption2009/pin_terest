Rails.application.routes.draw do
  root 'home#index'
  get :search, to: 'home#search', as: 'search'
  post 'pin_post/:id', to: 'pins#pin_post', as: 'pin_post'

  devise_for :users
  resources :pins
  resources :boards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
