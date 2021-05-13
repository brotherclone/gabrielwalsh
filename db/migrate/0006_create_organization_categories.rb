class CreateOrganizationCategories < ActiveRecord::Migration[6.1]
  def self.up
    create_table :organization_categories do |t|
      t.belongs_to :organization
      t.belongs_to :sector
      t.timestamps
    end
  end

  def self.down
    drop_table :organization_categories
  end

end
