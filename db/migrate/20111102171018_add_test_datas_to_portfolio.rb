class AddTestDatasToPortfolio < ActiveRecord::Migration
  def change
    Portfolio.create(:name => 'test portaolio path')
  end
end
