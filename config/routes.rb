Rails.application.routes.draw do
  get 'rsvp', to: 'rsvps#new'
  resources :rsvps, only: [:index]
  resources :recipes, only: [:new, :create, :show]
  resources :rsvp_emails, only: [:new, :create]
  devise_for :users
  devise_scope :user do
    get 'admin', to: 'devise/sessions#new'
    get '/admins/sign_out', to: 'devise/sessions#destroy'
  end

  get 'admin/dashboard', as: :dashboard
  root 'home#index'

  unless Rails.env.production?
    get 'ui(/:action)', controller: 'ui'
  end

end
