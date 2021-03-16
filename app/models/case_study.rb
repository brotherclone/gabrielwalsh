class CaseStudy < ApplicationRecord
  belongs_to project
  has_many :case_study_items
  has_one :visual
  has_one :copy_block
end
