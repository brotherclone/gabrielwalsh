require 'rails_helper'

RSpec.describe Project, type: :model do

  it 'has a valid Factory' do
    expect(build(:project)).to be_valid
  end

  it 'has a valid Factory with a copy block' do
    expect(build(:project_with_copy_block)).to be_valid
  end

  it 'has a valid Factory with a project platform' do
    expect(build(:project_with_project_platform)).to be_valid
  end

  it 'has a valid Factory with my role' do
    expect(build(:project_with_my_role)).to be_valid
  end

  it 'has a valid Factory with a visual' do
    expect(build(:project)).to be_valid
  end

  it{
    should belong_to(:organization)
  }
end
