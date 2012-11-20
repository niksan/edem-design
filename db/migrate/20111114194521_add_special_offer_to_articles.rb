class AddSpecialOfferToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :special_offer, :boolean
  end
end
