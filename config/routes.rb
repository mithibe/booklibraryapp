Rails.application.routes.draw do
  resources :books do
    resources :borrowings, only: %i[new create]
  end

  post 'borrowings/:id/return', to: 'borrowings#mark_returned', as: 'return_borrowing'
  get 'borrowings/history', to: 'borrowings#borrower_history', as: 'borrower_history'
  root "books#index"

  get "borrowings/new"
  get "borrowings/create"
  get "books/index"
  get "books/show"
  get "books/new"
  get "books/create"
  get "books/edit"
  get "books/update"
  get "books/destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
