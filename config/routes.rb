Rails.application.routes.draw do
  root to: "static_pages#home"
  match "/home" => redirect("/"), via: [:get]
  match "/privacy" => "static_pages#privacy", via: [:get]
  match "/terms_of_service" => "static_pages#terms_of_service", via: [:get]
  get "static_pages/home"

  devise_for :users
  devise_scope :user do
    get "/admin" => "devise/sessions#new"
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  namespace :admin do
    resource :dashboard, controller: 'dashboard'
    resources :series
    resources :users
  end
end
