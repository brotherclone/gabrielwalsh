class CreateMyRoleDuringJobs < ActiveRecord::Migration[6.1]
  def self.up
    create_table :my_role_during_jobs do |t|
      t.belongs_to :my_role
      t.belongs_to :job
      t.timestamps
    end
  end
  def self.down
    drop_table :my_role_during_jobs
  end
end
