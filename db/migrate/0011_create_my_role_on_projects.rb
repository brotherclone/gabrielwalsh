class CreateMyRoleOnProjects < ActiveRecord::Migration[6.1]
  def self.up
    create_table :my_role_on_projects do |t|
      t.belongs_to :my_role
      t.belongs_to :project
      t.timestamps
    end
  end
  def self.down
    drop_table :my_role_on_projects
  end
end
