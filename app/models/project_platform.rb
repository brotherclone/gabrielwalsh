class ProjectPlatform < ApplicationRecord
  has_one :icon
  has_one :copy_block
  belongs_to :project
end
