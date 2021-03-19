class CaseStudyItem < ApplicationRecord
  belongs_to :case_study
  has_many :copy_blocks
  has_many :visuals
end
