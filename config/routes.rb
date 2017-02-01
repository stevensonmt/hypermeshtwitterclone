Rails.application.routes.draw do
  mount HyperMesh::Engine => '/rr'
  mount ActionCable.server => '/cable'
  get 'welcome/index'
  root 'welcome#index'

  devise_for :users, :controller => { :omniauth => "users/omniauth_callbacks" }#, controllers: { sessions: 'users/sessions' }#, controllers: { omniauth_callbacks: => 'omniauth_callbacks' } #path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'signUP' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
