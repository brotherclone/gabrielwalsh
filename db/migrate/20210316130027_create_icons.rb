class CreateIcons < ActiveRecord::Migration[6.1]

  def self.up
    create_table :icons do |t|
      t.string :asset_url
      t.timestamps
    end
  end

  def self.down
    drop_table :icons
  end

end
