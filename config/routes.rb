Rails.application.routes.draw do
  match "/privacy" => "static_pages#privacy", via: [:get]
  match "/terms_of_service" => "static_pages#terms_of_service", via: [:get]
  get "static_pages/home"
  root to: "static_pages#home"
  devise_for :users

  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
    get "/admin" => "devise/sessions#new"
  end

  namespace :admin do
    resources :users
  end
end
