#encoding: utf-8
# RailsAdmin config file. Generated on May 01, 2012 08:48
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  I18n.default_locale = :ru

  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  config.audit_with :history, User

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, AdminUser

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Edem Design', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  config.default_items_per_page = 50

  #  ==> Included models
  # Add all excluded models here:
  config.excluded_models = [Ckeditor::Asset, Ckeditor::AttachmentFile, Ckeditor::Picture, GritterNotice]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [Article, Ckeditor::Asset, Ckeditor::AttachmentFile, Ckeditor::Picture, GritterNotice, News, Partner, Portfolio, PortfolioItem, Review, SpecialOffer]

  # Application wide tried label methods for models' instances
  config.label_methods << [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  config.model Article do
    # Found associations:
      configure :parent, :belongs_to_association 
      configure :special_offers, :has_many_association 
      configure :children, :has_many_association   #   # Found columns:
      #configure :id, :integer 
      configure :title, :string 
      configure :body, :text 
      #configure :created_at, :datetime 
      #configure :updated_at, :datetime 
      #configure :permalink, :string 
      configure :parent_id, :integer         # Hidden 
      #configure :lft, :integer 
      #configure :rgt, :integer 
      configure :special_offer, :boolean 
      configure :meta_title, :string 
      configure :help_info, :boolean   #   # Sections:
    list do; end
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
      end
      field :special_offers, :has_many_association
      field :children, :has_many_association
    end
    create do; end
    update do; end
  end
  # config.model Ckeditor::Asset do
  #   # Found associations:
  #     configure :assetable, :polymorphic_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :data_file_name, :string 
  #     configure :data_content_type, :string 
  #     configure :data_file_size, :integer 
  #     configure :assetable_id, :integer         # Hidden 
  #     configure :assetable_type, :string         # Hidden 
  #     configure :type, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Ckeditor::AttachmentFile do
  #   # Found associations:
  #     configure :assetable, :polymorphic_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :data_file_name, :string         # Hidden 
  #     configure :data_content_type, :string         # Hidden 
  #     configure :data_file_size, :integer         # Hidden 
  #     configure :data, :paperclip 
  #     configure :assetable_id, :integer         # Hidden 
  #     configure :assetable_type, :string         # Hidden 
  #     configure :type, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Ckeditor::Picture do
  #   # Found associations:
  #     configure :assetable, :polymorphic_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :data_file_name, :string         # Hidden 
  #     configure :data_content_type, :string         # Hidden 
  #     configure :data_file_size, :integer         # Hidden 
  #     configure :data, :paperclip 
  #     configure :assetable_id, :integer         # Hidden 
  #     configure :assetable_type, :string         # Hidden 
  #     configure :type, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model GritterNotice do
  #   # Found associations:
  #     configure :owner, :polymorphic_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :owner_id, :integer         # Hidden 
  #     configure :owner_type, :string         # Hidden 
  #     configure :text, :text 
  #     configure :options, :serialized 
  #     configure :delivered_at, :datetime 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  config.model News do
    # Found associations:
      configure :portfolio, :belongs_to_association   #   # Found columns:
      configure :id, :integer 
      configure :title, :string 
      configure :date, :datetime 
      configure :body, :text 
      configure :created_at, :datetime 
      configure :updated_at, :datetime 
      configure :permalink, :string 
      configure :portfolio_id, :integer         # Hidden   #   # Sections:
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
  # config.model Partner do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :url, :string 
  #     configure :partner_image_file_name, :string         # Hidden 
  #     configure :partner_image_content_type, :string         # Hidden 
  #     configure :partner_image_file_size, :integer         # Hidden 
  #     configure :partner_image_updated_at, :datetime         # Hidden 
  #     configure :partner_image, :paperclip 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Portfolio do
  #   # Found associations:
  #     configure :portfolio_items, :has_many_association 
  #     configure :news, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :permalink, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :portfolio_image_file_name, :string         # Hidden 
  #     configure :portfolio_image_content_type, :string         # Hidden 
  #     configure :portfolio_image_file_size, :integer         # Hidden 
  #     configure :portfolio_image_updated_at, :datetime         # Hidden 
  #     configure :portfolio_image, :paperclip   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model PortfolioItem do
  #   # Found associations:
  #     configure :portfolio, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :portfolio_id, :integer         # Hidden 
  #     configure :portfolio_item_image_file_name, :string         # Hidden 
  #     configure :portfolio_item_image_content_type, :string         # Hidden 
  #     configure :portfolio_item_image_file_size, :integer         # Hidden 
  #     configure :portfolio_item_image_updated_at, :datetime         # Hidden 
  #     configure :portfolio_item_image, :paperclip 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Review do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :email, :string 
  #     configure :phone, :string 
  #     configure :theme, :string 
  #     configure :body, :text 
  #     configure :approve, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  config.model SpecialOffer do
    # Found associations:
      configure :article, :belongs_to_association   #   # Found columns:
   #   configure :id, :integer 
      configure :name, :string 
   #   configure :special_image_file_name, :string         # Hidden 
   #   configure :special_image_content_type, :string         # Hidden 
   #   configure :special_image_file_size, :integer         # Hidden 
   #   configure :special_image_updated_at, :datetime         # Hidden 
      configure :special_image, :paperclip 
   #   configure :article_id, :integer         # Hidden 
      configure :public, :boolean
   #   configure :created_at, :datetime 
   #   configure :updated_at, :datetime   #   # Sections:
    list do; end
    export do; end
    show do; end
    edit do; end
    create do; end
    update do; end
  end
end
