require 'rails_helper'

RSpec.describe VisualsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/visuals').to route_to('visuals#index')
    end

    it 'routes to #new' do
      expect(:get => '/visuals/new').to route_to('visuals#new')
    end

    it 'routes to #show' do
      expect(:get => '/visuals/1').to route_to('visuals#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/visuals/1/edit').to route_to('visuals#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/visuals').to route_to('visuals#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/visuals/1').to route_to('visuals#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/visuals/1').to route_to('visuals#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/visuals/1').to route_to('visuals#destroy', :id => '1')
    end

  end
end