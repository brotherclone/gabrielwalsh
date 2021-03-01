class CreateOrganizations < ActiveRecord::Migration[6.0]
  def self.up
    create_table :organizations do |t|
      t.string :name
      t.string :description
      t.string :logo_url
      t.integer :organization_type, default: 0
      t.timestamps
    end

    add_reference :organizations, :industry, index: true

  end

  def self.down

    remove_reference :organizations, :industry

    drop_table :organizations

  end

end
