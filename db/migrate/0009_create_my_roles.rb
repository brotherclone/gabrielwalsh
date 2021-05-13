class CreateMyRoles < ActiveRecord::Migration[6.1]
  def self.up

    create_table :my_roles do |t|
      t.string :role_name
      t.timestamps
    end

  end

  def self.down
    drop_table :my_roles
  end

end
