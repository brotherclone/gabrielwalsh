class CreateSkills < ActiveRecord::Migration[6.1]
  def self.up
    create_table :skills do |t|
      t.string :name
      t.timestamps
    end
  end
  def self.down
    drop_table :skills
  end
end
