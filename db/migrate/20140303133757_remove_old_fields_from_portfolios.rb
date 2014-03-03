class RemoveOldFieldsFromPortfolios < ActiveRecord::Migration
  def change
    remove_column :portfolios, :portfolio_image_file_name, :string
    remove_column :portfolios, :portfolio_image_content_type, :string
    remove_column :portfolios, :portfolio_image_file_size, :integer
    remove_column :portfolios, :portfolio_image_updated_at, :datetime
  end
end
