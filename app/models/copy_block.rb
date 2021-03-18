class CopyBlock < ApplicationRecord
  belongs_to :case_study_item
  belongs_to :project
  belongs_to :organization
  belongs_to :job
  belongs_to :visual
end
