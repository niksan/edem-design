#encoding: utf-8
ActiveAdmin.register Partner do

  form do |f|
    f.inputs "details" do
      f.input :name, label:'название'
      f.input :partner_image
      f.input :url
    end
    f.buttons
  end

end
