#coding: utf-8
RailsAdmin.config do |config|

  I18n.default_locale = :ru
  config.current_user_method { current_user }
  config.audit_with :history, User
  config.main_app_name = ['Edem Design', 'Admin']
  config.default_items_per_page = 50
  config.excluded_models = [Ckeditor::Asset, Ckeditor::AttachmentFile, Ckeditor::Picture, GritterNotice]
  config.label_methods << [:name, :title]

  config.model Article do
      configure :parent, :belongs_to_association 
      configure :special_offers, :has_many_association 
      configure :children, :has_many_association
      configure :id, :integer 
      configure :title, :string 
      configure :body, :text 
      configure :created_at, :datetime 
      configure :updated_at, :datetime 
      configure :permalink, :string 
      configure :parent_id, :integer
      configure :lft, :integer 
      configure :rgt, :integer 
      configure :special_offer, :boolean 
      configure :meta_title, :string 
      configure :help_info, :boolean
    list do
      field :title
      field :parent
      field :special_offer
    end
    export do; end
    show do; end
    edit do
      field :parent_id, :integer do
        visible false
      end
      field :parent, :belongs_to_association
      field :title, :string 
      field :body, :text do
        ckeditor do 
          true
        end
        ckeditor_config_js do
          '/assets/config.js'
        end
      end
      field :special_offers, :has_many_association
      field :children, :has_many_association
    end
    create do; end
    update do; end
  end

  config.model News do
      configure :portfolio, :belongs_to_association
      configure :id, :integer 
      configure :title, :string 
      configure :date, :datetime 
      configure :body, :text
      configure :created_at, :datetime 
      configure :updated_at, :datetime 
      configure :permalink, :string 
      configure :portfolio_id, :integer
    list do; end
    export do; end
    show do; end
    edit do
      field :title
      field :date
      field :body, :text do
        ckeditor do 
          true
        end
      end
      field :portfolio
    end
    create do; end
    update do; end
  end

  config.model SpecialOffer do
      configure :article, :belongs_to_association
      configure :id, :integer
      configure :name, :string
      configure :special_image_file_name, :string
      configure :special_image_content_type, :string
      configure :special_image_file_size, :integer
      configure :special_image_updated_at, :datetime
      configure :special_image, :paperclip
      configure :article_id, :integer
      configure :public, :boolean
    configure :created_at, :datetime
    configure :updated_at, :datetime
    list do; end
    export do; end
    show do; end
    edit do; end
    create do; end
    update do; end
  end

end
