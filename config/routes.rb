EdemDesign::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  root :to => 'articles#index'
  resources :articles, :news, :portfolio, :reviews, :partners, :messages

end
