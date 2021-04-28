class CaseStudyItem < ApplicationRecord
  mount_uploader :image_1, PhotosUploader
  mount_uploader :image_2, PhotosUploader
  mount_uploader :image_3, PhotosUploader
  belongs_to :case_study
end
