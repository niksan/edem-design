class AddImageToPortfolioItems < ActiveRecord::Migration
  def change
    add_column :portfolio_items, :image, :string
  end
end
