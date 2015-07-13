class AddPublishedToTags < ActiveRecord::Migration
  def change
    add_column :tags, :published, :boolean, default: true
  end
end
