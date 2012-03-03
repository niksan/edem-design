#encoding: utf-8
ActiveAdmin.register Article do

menu :label => "Статьи"

index do
    column :id
    column :title
    column :special_offer
    column :help_info
    column :parent
    column :created_at
end
  
end
