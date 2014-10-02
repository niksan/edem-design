class AddTagsToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :tags, :string
  end
end
