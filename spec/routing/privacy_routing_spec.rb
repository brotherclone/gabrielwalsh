require 'rails_helper'

RSpec.describe PrivacyController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(:get => '/privacy').to route_to('privacy#index')
    end
  end
end