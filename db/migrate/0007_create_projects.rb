class CreateProjects < ActiveRecord::Migration[6.1]

  def self.up
    create_table :projects do |t|
      t.string :title
      t.date :working_date
      t.date :publish_date
      t.string :description
      t.string :large_image
      t.string :small_image
      t.timestamps
    end
    add_reference :projects, :organization, index: true
  end

  def self.down
    remove_reference :projects, :organization
    drop_table :projects
  end

end
