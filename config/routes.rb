Rails.application.routes.draw do
  devise_for :users
  # root 'messages#index'
  # get 'message/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
