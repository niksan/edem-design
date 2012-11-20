class AddDataToArticles < ActiveRecord::Migration
  def change
    Article.create(:title => 'Ландшафтное проектирование', :body => 'test data')
    Article.create(:title => 'Растения', :body => 'test data')
    Article.create(:title => 'Водоемы', :body => 'test data')
    Article.create(:title => 'Стилистика сада', :body => 'test data')
    Article.create(:title => 'Посадка крупномеров', :body => 'test data')
    Article.create(:title => 'Услуги садовника', :body => 'test data')
    Article.create(:title => 'Мощения', :body => 'test data')
    Article.create(:title => 'Малые архитектурные формы', :body => 'test data')
    Article.create(:title => 'Автоматический полив', :body => 'test data')
    Article.create(:title => 'Освещение', :body => 'test data')
    Article.create(:title => 'Вертикальное озеленение', :body => 'test data')
    Article.create(:title => 'Зимние сады', :body => 'test data')
  end
end
