Rails.application.routes.draw do
  root to: "pages#home"

  resources :artists do
    resources :songs, except: [:destroy]
  end
  resources :images, except: [:destroy]
end
