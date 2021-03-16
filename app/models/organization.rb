class Organization < ApplicationRecord
  has_many :sectors
  has_one :icon
  has_many :project_platforms
  has_one :copy_block
end
