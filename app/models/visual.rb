class Visual < ApplicationRecord
  belongs_to :case_study
  belongs_to :case_study_item
  belongs_to :project
  has_many :copy_blocks
end
