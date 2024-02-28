Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  root to: "villas#index"

  resources :villas, only: %i[show new create edit update destroy] do
    resources :bookings, only: [:create]
  end

end
