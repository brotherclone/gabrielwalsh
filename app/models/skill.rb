class Skill < ApplicationRecord
  mount_uploader :icon, PhotosUploader
  belongs_to :my_role
end
