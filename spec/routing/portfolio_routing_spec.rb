require 'rails_helper'

RSpec.describe PortfolioController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(:get => '/portfolio').to route_to('case_studies#index')
    end
  end
end