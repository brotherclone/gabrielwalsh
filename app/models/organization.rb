class Organization < ApplicationRecord
  belongs_to :sector
  has_one :icon
  has_many :project_platforms
  has_many :copy_blocks
  has_many :projects
  has_many :jobs
end
