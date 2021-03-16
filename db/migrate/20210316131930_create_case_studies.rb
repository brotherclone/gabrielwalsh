class CreateCaseStudies < ActiveRecord::Migration[6.1]
  def self.up
    create_table :case_studies do |t|
      t.timestamps
    end
  end

  def self.down
    drop_table :case_studies
  end

end
