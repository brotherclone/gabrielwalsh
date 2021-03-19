require 'rails_helper'

RSpec.describe ProjectPlatformsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/project_platforms').to route_to('project_platforms#index')
    end

    it 'routes to #new' do
      expect(:get => '/project_platforms/new').to route_to('project_platforms#new')
    end

    it 'routes to #show' do
      expect(:get => '/project_platforms/1').to route_to('project_platforms#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/project_platforms/1/edit').to route_to('project_platforms#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/project_platforms').to route_to('project_platforms#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/project_platforms/1').to route_to('project_platforms#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/project_platforms/1').to route_to('project_platforms#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/project_platforms/1').to route_to('project_platforms#destroy', :id => '1')
    end

  end
end