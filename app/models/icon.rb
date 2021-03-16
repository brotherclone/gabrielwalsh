class Icon < ApplicationRecord
  belongs_to :my_role
  belongs_to :organization
  belongs_to :project_platform
end
