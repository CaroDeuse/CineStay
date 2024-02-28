Rails.application.routes.draw do
  devise_for :users
  root to: "villas#index"
  resources :villas, only: %i[show new create edit update] do
    resources :bookings, only: [:create]
    collection do
      get :my_villas
    end
  end
end
