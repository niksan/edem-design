#encoding: utf-8
ActiveAdmin.register PortfolioItem do
  
  index do
    column :id
    column :portfolio_item_image do |p|
      image_tag p.portfolio_item_image.url(:thumb)
    end
    column :title
    default_actions
  end

  form do |f|
    f.inputs "details" do
      f.input :portfolio, label:'портфолио'
      f.input :portfolio_item_image, label:'изображение'
      f.input :title, label:'название'
    end
    f.buttons
  end

end
