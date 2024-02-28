Rails.application.routes.draw do
  devise_for :users
  root to: "villas#index"
  resources :villas, only: %i[show new create edit update destroy]
end
