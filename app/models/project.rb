class Project < ApplicationRecord
  mount_uploader :small_image, PhotosUploader
  mount_uploader :large_image, PhotosUploader
  belongs_to :organization
  has_many :case_studies
  has_many :project_platforms
  has_many :my_role_on_projects
  has_many :my_roles, through: :my_role_on_projects
  accepts_nested_attributes_for :my_role_on_projects
end
