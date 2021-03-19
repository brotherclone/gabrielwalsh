class CreateOrganizations < ActiveRecord::Migration[6.1]

  def self.up
    create_table :organizations do |t|
      t.string :location
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end

end
