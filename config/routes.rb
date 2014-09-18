Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'

  get 'errors/show'

  get 'home', to: 'pages#home', as: :home

  match ':status', to: 'errors#show', constraints: {status: /\d{3}/}, via: :all

  root 'pages#home'

end
