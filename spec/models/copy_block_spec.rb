require 'rails_helper'

RSpec.describe CopyBlock, type: :model do

  it 'has a valid Factory' do
    expect(build(:copy_block)).to be_valid
  end

  it{
    should belong_to(:case_study_item)
    should belong_to(:project)
    should belong_to(:organization)
    should belong_to(:job)
    should belong_to(:visual)
  }

end
