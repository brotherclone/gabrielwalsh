class CreateCaseStudyItems < ActiveRecord::Migration[6.1]
  def self.up
    create_table :case_study_items do |t|
      t.integer :case_study_type
      t.timestamps
    end
  end

  def self.down
    drop_table :case_study_items
  end

end
