require 'rails_helper'

RSpec.describe Project, type: :model do

  it 'has a valid Factory' do
    expect(build(:project)).to be_valid
  end


  it 'has a valid Factory with a project platform' do
    expect(build(:project_with_project_platform)).to be_valid
  end

  it 'has many roles through my role on a project' do
    should have_many(:my_role_on_projects)
    should have_many(:my_roles).through(:my_role_on_projects)
  end

  it 'belongs to an organization' do
    should belong_to(:organization)
  end

end
