class CreateJobs < ActiveRecord::Migration[6.1]

  def self.up
    create_table :jobs do |t|
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end

end
