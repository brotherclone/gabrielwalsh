class CreateProjectPlatforms < ActiveRecord::Migration[6.1]
  def self.up
    create_table :project_platforms do |t|
      t.string :platform_name
      t.string :description
      t.string :logo
      t.timestamps
    end
    add_reference :project_platforms, :project, index: true
  end

  def self.down
    remove_reference :project_platforms, :project
    drop_table :project_platforms
  end

end
