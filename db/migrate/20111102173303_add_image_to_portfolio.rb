class AddImageToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :portfolio_image_file_name, :string
    add_column :portfolios, :portfolio_image_content_type, :string
    add_column :portfolios, :portfolio_image_file_size, :integer
    add_column :portfolios, :portfolio_image_updated_at, :datetime
  end
end
