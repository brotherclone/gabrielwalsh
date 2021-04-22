class MyRole < ApplicationRecord
  has_many :my_role_during_jobs
  has_many :jobs, through: :my_role_during_jobs
  accepts_nested_attributes_for :my_role_during_jobs
  has_many :my_role_on_projects
  has_many :projects, through: :my_role_on_projects
  accepts_nested_attributes_for :my_role_on_projects
  has_many :skills
end
