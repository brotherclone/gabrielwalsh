require 'rails_helper'

RSpec.describe CopyBlocksController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/copy_blocks').to route_to('copy_blocks#index')
    end

    it 'routes to #new' do
      expect(:get => '/copy_blocks/new').to route_to('copy_blocks#new')
    end

    it 'routes to #show' do
      expect(:get => '/copy_blocks/1').to route_to('copy_blocks#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/copy_blocks/1/edit').to route_to('copy_blocks#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/copy_blocks').to route_to('copy_blocks#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/copy_blocks/1').to route_to('copy_blocks#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/copy_blocks/1').to route_to('copy_blocks#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/copy_blocks/1').to route_to('copy_blocks#destroy', :id => '1')
    end

  end
end