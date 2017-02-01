Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount HyperMesh::Engine => '/rr'
  mount ActionCable.server => '/cable'
end
