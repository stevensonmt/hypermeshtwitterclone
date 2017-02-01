Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "omniauth_callbacks",
    :sessions => 'users/sessions'
   }

  # devise_scope :user do
  #   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

  resources :users
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  # root 'users#sessions#new'
end
