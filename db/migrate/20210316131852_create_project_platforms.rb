class CreateProjectPlatforms < ActiveRecord::Migration[6.1]
  def self.up
    create_table :project_platforms do |t|
      t.string :platform_name
      t.timestamps
    end
  end

  def self.down
    drop_table :project_platforms
  end

end
