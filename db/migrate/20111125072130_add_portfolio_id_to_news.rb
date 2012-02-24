class AddPortfolioIdToNews < ActiveRecord::Migration
  def change
    add_column :news, :portfolio_id, :integer
  end
end
