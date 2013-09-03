#coding: utf-8
RailsAdmin.config do |config|

  config.authorize_with :cancan
  I18n.default_locale = :ru
  config.current_user_method { current_user }
  config.audit_with :history, User
  config.main_app_name = ['Edem Design', 'Admin']
  config.default_items_per_page = 50
  config.excluded_models = [Ckeditor::Asset, Ckeditor::AttachmentFile, Ckeditor::Picture, GritterNotice, RoleUser]
  [:email, :title].each do |method|
    config.label_methods << method
  end

  config.model Article do
      configure :portfolio, :belongs_to_association 
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
      configure :portfolio_id, :integer
      configure :lft, :integer 
      configure :rgt, :integer 
      configure :special_offer, :boolean 
      configure :meta_title, :string 
      configure :help_info, :boolean
      configure :published, :boolean
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
          '/assets/ckeditor/config.js'
        end
      end
      field :special_offers, :has_many_association
      field :children, :has_many_association
      field :published
      field :portfolio, :belongs_to_association
    end
    create do; end
    update do; end
  end

  config.model News do
      configure :portfolio, :belongs_to_association
      configure :id, :integer 
      configure :title, :string 
      configure :date, :date
      configure :body, :text
      configure :created_at, :datetime 
      configure :updated_at, :datetime 
      configure :permalink, :string 
      configure :portfolio_id, :integer
    list do
      field :title
      field :date
    end
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

  config.model Review do
    configure :id, :integer
    configure :name, :string
    configure :email, :string
    configure :phone, :string
    configure :theme, :string
    configure :body, :text
    configure :approve, :boolean
    configure :created_at, :datetime
    configure :updated_at, :datetime
    list do
      field :name
      field :email
      field :phone
      field :theme
      field :approve
    end
    export do; end
    show do; end
    edit do
      field :name
      field :email
      field :phone
      field :theme
      field :body
      field :approve
    end
    create do; end
    update do; end
  end

  config.model Partner do
    configure :id, :integer
    configure :name, :string
    configure :url, :string
    configure :partner_image, :paperclip
    configure :created_at, :datetime
    configure :updated_at, :datetime
    list do
      field :name
      field :url
      field :partner_image
    end
    export do; end
    show do; end
    edit do
      field :name
      field :url
      field :partner_image
    end
    create do; end
    update do; end
  end

  config.model Role do
    visible false
    configure :id, :integer
    configure :name, :string
    configure :created_at, :datetime
    configure :updated_at, :datetime
    list do
      field :name
    end
    export do; end
    show do; end
    edit do
      field :name
    end
    create do; end
    update do; end
  end

  config.model User do
      configure :roles, :has_many_association 
      configure :id, :integer 
      configure :email, :string 
      configure :password, :password
      configure :password_confirmation, :password
      configure :reset_password_token, :string
      configure :reset_password_sent_at, :datetime 
      configure :remember_created_at, :datetime 
      configure :sign_in_count, :integer 
      configure :current_sign_in_at, :datetime 
      configure :last_sign_in_at, :datetime 
      configure :current_sign_in_ip, :string 
      configure :last_sign_in_ip, :string 
      configure :created_at, :datetime 
      configure :updated_at, :datetime
    list do
      field :id
      field :email
      field :sign_in_count
      field :last_sign_in_at
      field :last_sign_in_ip
    end
    export do; end
    show do; end
    edit do
      field :email
      field :password
      field :roles
    end
    create do; end
    update do; end
  end

  config.model PortfolioItem do
    configure :portfolio, :belongs_to_association
    configure :id, :integer
    configure :portfolio_id, :integer
    configure :title, :string
    configure :portfolio_item_image, :paperclip
    configure :created_at, :datetime
    configure :updated_at, :datetime
    list do
      field :portfolio_item_image
      field :title
      field :portfolio
    end
    export do; end
    show do; end
    edit do
      field :portfolio
      field :title
      field :portfolio_item_image
    end
    create do; end
    update do; end
  end

  config.model Portfolio do
    visible false
    configure :portfolio_items, :has_many_association
    configure :id, :integer
    configure :name, :string
    configure :portfolio_image, :paperclip
    configure :created_at, :datetime
    configure :updated_at, :datetime
    list do
      field :name
      field :portfolio_image
    end
    export do; end
    show do; end
    edit do
      field :name
      field :portfolio_image
    end
    create do; end
    update do; end
  end

  config.model SpecialOffer do
    configure :article_id, :belongs_to_association
    configure :id, :integer
    configure :name, :string
    configure :special_image, :paperclip
    configure :public, :boolean
    configure :created_at, :datetime
    configure :updated_at, :datetime
    list do
      field :name
      field :special_image
      field :article
      field :public
    end
    export do; end
    show do; end
    edit do
      field :article
      field :name
      field :special_image
      field :public
    end
    create do; end
    update do; end
  end
end
