class CaseStudyItem < ApplicationRecord
  mount_uploader :image_1, PhotosUploader
  mount_uploader :image_2, PhotosUploader
  mount_uploader :image_3, PhotosUploader
  belongs_to :case_study
  enum case_study_item_type: [:large_image, :side_by_side, :just_large_text, :diagram, :editorial]
end
