require 'rails_helper'

RSpec.describe CaseStudyItem, type: :model do

  it 'has a valid Factory' do
    expect(build(:case_study_item)).to be_valid
  end

  it 'belongs to a case study' do
    should belong_to(:case_study)
  end

end
