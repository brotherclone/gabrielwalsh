require 'rails_helper'

RSpec.describe Job, type: :model do
  it 'has a valid Factory' do
    expect(build(:job)).to be_valid
  end
end
