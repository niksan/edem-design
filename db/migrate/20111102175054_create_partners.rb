class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :url
      t.string :partner_image_file_name
      t.string :partner_image_content_type
      t.integer :partner_image_file_size
      t.datetime :partner_image_updated_at

      t.timestamps
    end
  end
end
