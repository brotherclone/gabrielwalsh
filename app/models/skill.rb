class Skill < ApplicationRecord
  belongs_to :discipline
  has_many :served_roles
  has_many :jobs
end
