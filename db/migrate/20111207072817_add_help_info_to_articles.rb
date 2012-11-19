class AddHelpInfoToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :help_info, :boolean, :default => false
  end
end
