class CreateOrganizationTypes < ActiveRecord::Migration[6.0]

  def self.up
    create_table :organization_types do |t|
      t.integer :enum_index
      t.timestamps
    end
  end

  def self.down
    drop_table :organization_types
  end

end
