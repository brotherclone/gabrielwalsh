class CreateSkills < ActiveRecord::Migration[6.1]
  def self.up
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.string :icon
      t.timestamps
    end
    add_reference :skills, :my_role, index: true
  end
  def self.down
    remove_reference :skills, :my_role
    drop_table :skills
  end
end
