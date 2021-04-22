class CaseStudy < ApplicationRecord
  belongs_to :project
  has_many :case_study_items
end
