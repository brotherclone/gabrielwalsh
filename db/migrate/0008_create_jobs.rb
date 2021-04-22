class CreateJobs < ActiveRecord::Migration[6.1]

  def self.up
    create_table :jobs do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :responsibilities
      t.string :accomplishments
      t.timestamps
    end
    add_reference :jobs, :organization, index: true
  end

  def self.down
    remove_reference :jobs, :organization
    drop_table :jobs
  end

end
