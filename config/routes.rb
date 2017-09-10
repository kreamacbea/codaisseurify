Rails.application.routes.draw do
  root "pages#home"

  devise_for :users

  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :artists, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :songs, except: [:show, :destroy]
  resources :photos, only: [:index, :show, :destroy]
end
