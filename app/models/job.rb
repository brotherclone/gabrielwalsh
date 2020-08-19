class Job < ApplicationRecord
  belongs_to :organization
  belongs_to :skill
end
