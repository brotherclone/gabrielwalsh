class CreateIndustries < ActiveRecord::Migration[6.0]

  def self.up
    create_table :industries do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :industries
  end

end
