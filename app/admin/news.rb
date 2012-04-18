#encoding: utf-8
ActiveAdmin.register News do
  
  index do
    column :id
    column :title
    column :date
    column :portfolio
    default_actions
  end

  form do |f|
    f.inputs "details" do
      f.input :title, label:'заголовок'
      f.input :date, label:'дата'
      f.input :body
      f.input :portfolio, label:'портфолио'
    end
    f.buttons
  end

end
