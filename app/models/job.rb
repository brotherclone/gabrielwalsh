class Job < ApplicationRecord
  belongs_to :organization
  has_many :my_role_during_jobs
  has_many :my_roles, through: :my_role_during_jobs
  accepts_nested_attributes_for :my_role_during_jobs
end
