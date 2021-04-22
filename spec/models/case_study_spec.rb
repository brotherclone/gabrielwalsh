require 'rails_helper'

RSpec.describe CaseStudy, type: :model do

  it 'has a valid Factory' do
    expect(build(:case_study)).to be_valid
  end

  it 'has a valid Factory with a case study item' do
    expect(build(:case_study_with_case_study_items)).to be_valid
  end

  it 'belongs to a project' do
    should belong_to(:project)
  end

end
