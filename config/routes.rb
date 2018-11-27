Rails.application.routes.draw do
  root to: "static_pages#home"
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/admin' => 'devise/sessions#new'
  end
end
