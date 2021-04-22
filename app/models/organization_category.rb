class OrganizationCategory < ApplicationRecord
  belongs_to :sector
  belongs_to :organization
end