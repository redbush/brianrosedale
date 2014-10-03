Rails.application.routes.draw do

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end


  resources :posts, only: [:index, :show], concerns: :paginatable

  devise_for :admins

  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'

  get 'posts_redirect', to: 'posts#posts_redirect', as: :posts_redirect

  get 'home', to: 'pages#home', as: :home
  get 'work', to: 'pages#work', as: :work
  get 'about', to: 'pages#about', as: :about

  match '(errors)/:status', to: 'errors#show', constraints: {status: /\d{3}/}, via: :all

  root 'pages#home'

end
