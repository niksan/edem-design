class AddMainMenuArticlesToArticles < ActiveRecord::Migration
  def change
    Article.create(:title => 'О нашей студии', :body => 'test data')
    Article.create(:title => 'Прайс-лист', :body => 'test data')
    Article.create(:title => 'Контакты', :body => 'test data')
  end
end
