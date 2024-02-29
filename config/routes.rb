Rails.application.routes.draw do
  devise_for :users
  root to: "villas#index"

  resources :villas, only: %i[show new create edit update destroy] do
    resources :bookings, only: %i[create]

    collection do
      get :my_villas
    end
  end

  resources :bookings, only: %i[destroy] do
    collection do
      get :my_bookings
    end
  end
end
