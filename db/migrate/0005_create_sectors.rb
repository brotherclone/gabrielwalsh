class CreateSectors < ActiveRecord::Migration[6.1]
  def self.up
    create_table :sectors do |t|
      t.string :name
      t.timestamps
      t.string :description
      t.string :icon
    end
  end
  def self.down
    drop_table :sectors
  end

end
