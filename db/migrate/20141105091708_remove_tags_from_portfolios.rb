class RemoveTagsFromPortfolios < ActiveRecord::Migration
  def change
    remove_column :portfolios, :tags
  end
end
