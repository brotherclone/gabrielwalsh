class CreateCaseStudies < ActiveRecord::Migration[6.1]
  def self.up
    create_table :case_studies do |t|
      t.timestamps
      t.string :description
      t.string :sub_title
      t.string :large_visual
    end
    add_reference :case_studies, :project, index: true
  end

  def self.down
    remove_reference :case_studies, :project
    drop_table :case_studies
  end

end
