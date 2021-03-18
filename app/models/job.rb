class Job < ApplicationRecord
  belongs_to :organization
  has_many :my_roles
end
