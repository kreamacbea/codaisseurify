Rails.application.routes.draw do
  root to: "pages#home"

  resources :artists, only: [:show, :new, :edit, :create, :update]
  resources :songs, except: [:destroy]
  resources :images, except: [:destroy]
end
