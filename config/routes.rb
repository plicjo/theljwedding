Rails.application.routes.draw do
  get 'rsvp', to: 'rsvps#new'
  resources :rsvps, only: [:create, :update, :index]
  resources :recipes, only: [:new, :create, :show]
  resources :rsvp_emails, only: [:new, :create]
  devise_for :users
  devise_scope :user do
    get 'admin', to: 'devise/sessions#new'
    get '/admins/sign_out', to: 'devise/sessions#destroy'
  end

  get 'admin/dashboard', as: :dashboard
  get '/svelte', to: 'svelte#index'
  root 'home#index'
end
