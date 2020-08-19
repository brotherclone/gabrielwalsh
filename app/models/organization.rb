class Organization < ApplicationRecord
  belongs_to :industry
  belongs_to :organization_type
  has_many :awards
  has_many :degrees
  has_many :projects
  has_many :jobs
end
