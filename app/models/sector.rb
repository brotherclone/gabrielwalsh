class Sector < ApplicationRecord
  has_many :organization_categories
  has_many :organizations, through: :organization_categories
  accepts_nested_attributes_for :organization_categories
end
