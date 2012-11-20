class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :theme
      t.text :body
      t.boolean :approve

      t.timestamps
    end
  end
end
