require 'rails_helper'

RSpec.describe PortfolioImageCallOut, type: :model do

  it 'has a valid Factory' do
    expect(build(:portfolio_image_call_out)).to be_valid
  end

end
