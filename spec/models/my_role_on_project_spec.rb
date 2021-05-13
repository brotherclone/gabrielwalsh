require 'rails_helper'

RSpec.describe MyRoleOnProject, type: :model do

  it 'has a valid Factory' do
    expect(build(:my_role_on_project)).to be_valid
  end

  it 'belongs to my role'do
    should belong_to(:my_role)
  end

  it 'belongs to a project' do
    should belong_to(:project)
  end

end
