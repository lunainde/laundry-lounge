Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get '/machines', to: 'machines#index'
  # get '/machines/:id', to: 'machines#show'
  resources :machines, only: [:index, :show, :edit, :update, :destroy]
end
