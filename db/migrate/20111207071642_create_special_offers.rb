class CreateSpecialOffers < ActiveRecord::Migration
  def change
    create_table :special_offers do |t|
      t.string :name
      t.string :special_image_file_name
      t.string :special_image_content_type
      t.integer :special_image_file_size
      t.datetime :special_image_updated_at
      t.integer :article_id

      t.timestamps
    end
  end
end
