Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get '/machines', to: 'machines#index'
  # get '/machines/:id', to: 'machines#show'
  resources :machines, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
