ActiveAdmin.register SpecialOffer, :as => "Specpredlozheniya" do
  
  index per_page: 10 do
    column :id
    column :name
    column :special_image do |s|
      image_tag s.special_image.url(:thumb)
    end
    column :article
    column :created_at
    default_actions
  end

end
