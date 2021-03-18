class CaseStudy < ApplicationRecord
  belongs_to :project
  has_many :case_study_items
  has_many :visual
  has_many :copy_block
end
