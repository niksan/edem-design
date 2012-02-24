class AddMetaTitleToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :meta_title, :string, :default => ''
  end
end
