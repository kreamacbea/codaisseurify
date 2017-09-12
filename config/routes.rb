Rails.application.routes.draw do
  root "pages#home"

  resources :artists do
    resources :songs, except: [:show, :destroy]
  end
end
