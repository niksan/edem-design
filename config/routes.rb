EdemDesign::Application.routes.draw do

  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  mount Ckeditor::Engine => '/ckeditor'

  root :to => 'articles#index'

  resources :articles, :news, :portfolio, :reviews, :partners, :messages

end
