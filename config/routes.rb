Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "patients#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :patients, only: [:index]
  resources :instruments, only: [:show, :new, :create]
  resources :instrument_responses, only: [:create]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
