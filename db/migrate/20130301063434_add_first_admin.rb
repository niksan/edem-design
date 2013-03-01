class AddFirstAdmin < ActiveRecord::Migration
  def up
    r = Role.create(name: 'admin')
    User.where(email: 'info@niksan.ru').first.roles << r
  end

  def down
    Role.destroy_all
  end
end
