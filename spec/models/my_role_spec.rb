require 'rails_helper'

RSpec.describe MyRole, type: :model do

  it 'has a valid Factory' do
    expect(build(:my_role)).to be_valid
  end

  it 'has a valid Factory with a skill' do
    expect(build(:my_role_with_skill)).to be_valid
  end

  it 'has many jobs through my role during a job' do
    should have_many(:my_role_during_jobs)
    should have_many(:jobs).through(:my_role_during_jobs)
  end

  it 'has many projects through my role on a project' do
    should have_many(:my_role_on_projects)
    should have_many(:projects).through(:my_role_on_projects)
  end

end
