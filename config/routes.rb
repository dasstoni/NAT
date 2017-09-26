Rails.application.routes.draw do
  root 'snacks#index'
  resources :snacks, only: [:index, :new, :create, :update]
  get '/snacks/vote', to: 'snacks#vote', as: 'votes_snacks'
end
