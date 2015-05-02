Rails.application.routes.draw do
  get 'weddings/edit'

  devise_for :users
  devise_scope :user do
    get 'admin', to: 'devise/sessions#new'
    get '/admins/sign_out', to: 'devise/sessions#destroy'
  end

  resources :weddings, only: [:edit, :update]
  
  get 'static_pages/dashboard', as: :dashboard
  root 'home#index'
end
