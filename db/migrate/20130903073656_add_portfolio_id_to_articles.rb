class AddPortfolioIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :portfolio_id, :integer
  end
end
