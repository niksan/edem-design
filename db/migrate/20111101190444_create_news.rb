class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.datetime :date
      t.text :body
      t.string :permalink

      t.timestamps
    end
  end
end
