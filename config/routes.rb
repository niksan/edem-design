EdemDesign::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'articles#index'
  resources :articles, :news, :portfolio, :reviews, :partners, :messages

end
