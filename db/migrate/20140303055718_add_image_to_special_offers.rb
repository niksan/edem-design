class AddImageToSpecialOffers < ActiveRecord::Migration
  def change
    add_column :special_offers, :image, :string
  end
end
