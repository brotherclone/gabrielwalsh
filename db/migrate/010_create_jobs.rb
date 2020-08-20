class CreateJobs < ActiveRecord::Migration[6.0]
  def self.up

    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end

    add_reference :jobs, :organization, index: true
    add_reference :jobs, :skill, index: true

  end

  def self.down

    remove_reference :jobs, :organization
    remove_reference :jobs, :skill

    drop_table :jobs

  end
end
