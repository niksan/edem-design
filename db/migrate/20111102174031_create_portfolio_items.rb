class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.integer :portfolio_id
      t.string :portfolio_item_image_file_name
      t.string :portfolio_item_image_content_type
      t.integer :portfolio_item_image_file_size
      t.datetime :portfolio_item_image_updated_at

      t.timestamps
    end
  end
end
