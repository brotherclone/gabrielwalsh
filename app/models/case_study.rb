class CaseStudy < ApplicationRecord
  mount_uploader :large_visual, PhotosUploader
  belongs_to :project
  has_many :case_study_items
end
