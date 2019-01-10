Rails.application.routes.draw do
  root to: "static_pages#home"
  get "static_pages/home"
  match "/home" => redirect("/"), via: [:get]
  match "/privacy" => "static_pages#privacy", via: [:get]
  match "/terms_of_service" => "static_pages#terms_of_service", via: [:get]

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    invitations: 'users/invitations',
    passwords: 'users/passwords'
  }

  devise_scope :user do
    match "/profile" => "users/registrations#edit", via: [:get]
    get "/users/sign_out" => "users/sessions#destroy"
  end

  # The User-Facing application. People who have registered for an account go here.
  resources :achievements
  resources :billing_methods
  resource :dashboard, controller: "dashboard"
  resources :registrations, only: [:index, :show]

  # The Admin Facing Application. Admin users will be directed here.
  authenticate :user, lambda { |u| u.is_admin? } do
    namespace :admin do
      resource :dashboard, controller: "dashboard"
      resources :series
      resources :users
    end
  end
end
