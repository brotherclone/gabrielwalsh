require 'rails_helper'

RSpec.describe Organization, type: :model do

  it 'has a valid Factory' do
    expect(build(:organization)).to be_valid
  end

  it 'has a valid Factory with a sector through an organization category' do
    expect(build(:organization_with_sector_through_organization_category)).to be_valid
  end

  it 'has a valid Factory with a job' do
    expect(build(:organization_with_job)).to be_valid
  end

  it 'has many sectors through organization categories' do
    should have_many(:organization_categories)
    should have_many(:sectors).through(:organization_categories)
  end

  it 'has many projects' do
    should have_many(:projects)
  end

  it 'has many jobs' do
    should have_many(:jobs)
  end

end
