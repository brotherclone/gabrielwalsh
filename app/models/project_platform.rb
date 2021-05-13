class ProjectPlatform < ApplicationRecord
  mount_uploader :logo, PhotosUploader
  belongs_to :project
end
