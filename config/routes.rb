EdemDesign::Application.routes.draw do

  root :to => 'articles#index'
  resources :articles, :news, :portfolio, :reviews, :partners, :messages

end
