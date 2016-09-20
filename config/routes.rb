Rails.application.routes.draw do
  root 'home#index'

  get :search, to: 'home#search', as: 'search'
  get :my_boards, :to => 'boards#my_boards', :as => 'my_boards'
  get :my_pins, :to => 'pins#my_pins', :as => 'my_pins'
  get :pins_newsletter, :to => 'pins#pins_newsletter', :as => 'pins_newsletter'

  post 'pin_post/:id', to: 'pins#pin_post', as: 'pin_post'

  devise_for :users

  resources :pins
  resources :boards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
