Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/about' => 'homes#about', as: 'about'
  root to: 'homes#top'
  resources :books, only: [:show, :index, :edit, :create, :destroy, :update]
  resources :users, only: [:show, :index, :edit, :update]

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
end
