class CreateCaseStudyItems < ActiveRecord::Migration[6.1]
  def self.up
    create_table :case_study_items do |t|
      t.integer :case_study_type
      t.string :head_line
      t.string :sub_head
      t.string :text_1
      t.string :text_2
      t.string :text_3
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.timestamps
    end
    add_reference :case_study_items, :case_study, index:true
  end

  def self.down
    remove_reference :case_study_items, :case_study
    drop_table :case_study_items
  end

end
