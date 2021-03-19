class Project < ApplicationRecord
  belongs_to :organization
  has_many :case_studies
  has_many :copy_blocks
  has_many :project_platforms
  has_many :my_roles
  has_many :visuals
end
