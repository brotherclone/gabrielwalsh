class Organization < ApplicationRecord

  enum organization_type: { employer: 0,
                            agency: 1,
                            client: 2,
                            educational: 3 }

  belongs_to :industry
  has_many :awards
  has_many :degrees
  has_many :projects
  has_many :jobs

end
