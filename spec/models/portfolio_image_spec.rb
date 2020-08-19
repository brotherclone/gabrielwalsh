require 'rails_helper'

RSpec.describe PortfolioImage, type: :model do

  it 'has a valid Factory' do
    expect(build(:portfolio_image)).to be_valid
  end

end
