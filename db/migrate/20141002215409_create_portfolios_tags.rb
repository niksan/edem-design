class CreatePortfoliosTags < ActiveRecord::Migration
  def change
    create_table :portfolios_tags, id: false do |t|
      t.integer :portfolio_id
      t.integer :tag_id

      t.timestamps
    end
    add_index :portfolios_tags, [:portfolio_id, :tag_id], unique: true
  end
end
