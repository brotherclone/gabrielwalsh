class PortfolioImage < ApplicationRecord
  has_many :portfolio_image_call_outs
  belongs_to :project
end
