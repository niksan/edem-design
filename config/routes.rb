EdemDesign::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'articles#index'

  resources :articles, :news, :portfolio, :reviews, :partners, :messages
  resources :call_requests, only: :create

end
