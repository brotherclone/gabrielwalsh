class CreateProjects < ActiveRecord::Migration[6.0]

  def self.up

    create_table :projects do |t|
      t.string :title
      t.string :description
      t.datetime :project_date
      t.timestamps
    end

    add_reference :projects, :organization, index: true

  end

  def self.down

    remove_reference :projects, :organization

    drop_table :projects

  end

end
