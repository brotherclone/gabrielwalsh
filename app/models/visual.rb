class Visual < ApplicationRecord
  belongs_to :key_visual, class_name: 'CaseStudy'
end
