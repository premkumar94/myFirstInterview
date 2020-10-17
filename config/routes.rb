Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index"

  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  resources :dashboards

  get "log_out" => "sessions#destroy"
end
