class Organization < ApplicationRecord
  has_many :organization_categories
  has_many :sectors, through: :organization_categories
  accepts_nested_attributes_for :organization_categories
  has_many :project_platforms
  has_many :projects
  has_many :jobs
end
