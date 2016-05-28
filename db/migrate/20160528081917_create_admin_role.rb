class CreateAdminRole < ActiveRecord::Migration
  def up
    Role.create(name: 'admin')
  end

  def down
    Role.where(name: 'admin').first.destroy
  end
end
