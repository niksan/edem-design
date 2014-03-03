class RemoveSpecialImageFieldsFromSpecialOffers < ActiveRecord::Migration
  def change
    remove_column :special_offers, :special_image_file_name, :string
    remove_column :special_offers, :special_image_content_type, :string
    remove_column :special_offers, :special_image_file_size, :integer
    remove_column :special_offers, :special_image_updated_at, :datetime
  end
end
