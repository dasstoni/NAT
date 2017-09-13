Rails.application.routes.draw do
  root 'snacks#index'
  resources :snacks, only: [:index, :new, :create, :update]
end
