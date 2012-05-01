class AddPublicToSpecialOffers < ActiveRecord::Migration
  def change
    add_column :special_offers, :public, :boolean, default: true
  end
end
