class CopyBlock < ApplicationRecord
  belongs_to :intro, class_name: 'CaseStudy'
end
