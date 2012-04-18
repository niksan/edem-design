#encoding: utf-8
ActiveAdmin.register Portfolio do
  
  index do
    column :id
    column :name
    column :portfolio_image do |p|
      image_tag p.portfolio_image.url(:thumb)
    end
    default_actions
  end

  form do |f|
    f.inputs "details" do
      f.input :name, label:'название'
      f.input :portfolio_image, label:'изображение'
    end
    f.buttons
  end

end
