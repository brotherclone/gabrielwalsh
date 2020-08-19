class Project < ApplicationRecord
  belongs_to :organization
  has_many :portfolio_images
  has_many :served_roles
end
