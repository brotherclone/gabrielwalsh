class CreateSayings < ActiveRecord::Migration[6.1]
  def self.up
    create_table :sayings do |t|
      t.string :text
      t.timestamps
    end
  end
  def self.down
    drop_table :sayings
  end
end
