Rails.application.routes.draw do

  resources :posts, only: [:index, :show]

  devise_for :admins

  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'

  get 'errors/show'

  get 'home', to: 'pages#home', as: :home
  get 'work', to: 'pages#work', as: :work

  match ':status', to: 'errors#show', constraints: {status: /\d{3}/}, via: :all

  root 'pages#home'

end
