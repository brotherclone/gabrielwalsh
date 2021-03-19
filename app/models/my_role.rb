class MyRole < ApplicationRecord
  belongs_to :job
  belongs_to :project
  has_many :skills
  has_one :icon
end
