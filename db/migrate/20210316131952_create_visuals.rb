class CreateVisuals < ActiveRecord::Migration[6.1]
  def self.up
    create_table :visuals do |t|
      t.string :asset_url
      t.timestamps
    end
  end

  def self.down
    drop_table :visuals
  end
end
