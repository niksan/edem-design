class AddTestDataToNews < ActiveRecord::Migration
  def change
    News.create(:title => 'some test news title', :date => Date.today, :body => 'test news body')
  end
end
