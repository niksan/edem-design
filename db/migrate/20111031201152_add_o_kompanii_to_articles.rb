class AddOKompaniiToArticles < ActiveRecord::Migration
  def change
    Article.create(:title => 'О нашей студии', :body => 'тестовый контент')
  end
end
