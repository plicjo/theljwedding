Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'admin', to: 'devise/sessions#new'
    get '/admins/sign_out', to: 'devise/sessions#destroy'
  end
  
  get 'admin/dashboard', as: :dashboard
  root 'home#index'
end
