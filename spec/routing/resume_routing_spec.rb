require 'rails_helper'

RSpec.describe ResumeController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(:get => '/resume').to route_to('resume#index')
    end
  end
end