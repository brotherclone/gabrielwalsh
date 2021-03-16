class CreateProjects < ActiveRecord::Migration[6.1]

  def self.up
    create_table :projects do |t|
      t.string :title
      t.date :working_date
      t.date :publish_date
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end

end
