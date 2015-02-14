Rails.application.routes.draw do
  root to: 'index#index'

  resource :index, only: [:index]

  namespace :api do
    resources :users, only: [:index]
    resources :sessions, only: [:create]
  end
end
