class RemovePaperclipFieldsFromPortfolioItems < ActiveRecord::Migration
  def change
    remove_column :portfolio_items, :portfolio_item_image_file_name, :string
    remove_column :portfolio_items, :portfolio_item_image_content_type, :string
    remove_column :portfolio_items, :portfolio_item_image_file_size, :integer
    remove_column :portfolio_items, :portfolio_item_image_updated_at, :datetime
  end
end
