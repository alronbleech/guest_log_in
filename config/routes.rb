Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :books, only: [:show, :index, :edit, :create, :destroy, :update]
  resources :users, only: [:show, :index, :edit, :update]
end
