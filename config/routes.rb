Rails.application.routes.draw do
  get 'rsvp', to: 'rsvps#new'
  resources :rsvps, only: [:create, :update]
  resources :recipes, only: [:new, :create, :show]
  devise_for :users
  devise_scope :user do
    get 'admin', to: 'devise/sessions#new'
    get '/admins/sign_out', to: 'devise/sessions#destroy'
  end

  get 'admin/dashboard', as: :dashboard
  root 'home#index'
end
