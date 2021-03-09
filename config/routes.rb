Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :properties, only: [ :index, :show, :new, :create, :edit, :update, :destroy ] do
    resources :bookings, only: [ :new, :create ]
  end

end
