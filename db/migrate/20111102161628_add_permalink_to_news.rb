class AddPermalinkToNews < ActiveRecord::Migration
  def change
    add_column :news, :permalink, :string
  end
end
