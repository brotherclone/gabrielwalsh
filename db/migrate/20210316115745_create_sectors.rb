class CreateSectors < ActiveRecord::Migration[6.1]
  def self.up
    create_table :sectors do |t|
      t.string :name
      t.timestamps
    end
    add_reference :sectors, :organization, index: true
  end

  def self.down
    remove_reference :sectors, :organization
    drop_table :sectors
  end

end
