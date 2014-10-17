class ChangeApproveInReviews < ActiveRecord::Migration
  def change
    change_column :reviews, :approve, :boolean, default: false
  end
end
