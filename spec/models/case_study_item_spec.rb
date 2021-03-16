require 'rails_helper'

RSpec.describe CaseStudyItem, type: :model do

  it 'has a valid Factory' do
    expect(build(:case_study_item)).to be_valid
  end

  it{
    should belong_to(:case_study)
    should have_many(:visuals)
    should have_many(:copy_blocks)
  }

end
