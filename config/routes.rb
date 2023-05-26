Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "conversations#index"
  resources :conversations, only: [:show, :index] do
    resources :guest_messages, only: [:create]
  end
end
