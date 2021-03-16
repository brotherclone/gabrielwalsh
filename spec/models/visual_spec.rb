require 'rails_helper'

RSpec.describe Visual, type: :model do

  it 'has a valid Factory' do
    expect(build(:visual)).to be_valid
  end

  it 'has a valid Factory with a copy block' do
    expect(build(:visual_with_copy_block)).to be_valid
  end

  it{
    should belong_to(:case_study_item)
    should belong_to(:project)
    should belong_to(:case_study)
  }

end
