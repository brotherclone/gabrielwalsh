require 'rails_helper'

RSpec.describe CaseStudyItemsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/case_study_items').to route_to('case_study_items#index')
    end

    it 'routes to #new' do
      expect(:get => '/case_study_items/new').to route_to('case_study_items#new')
    end

    it 'routes to #show' do
      expect(:get => '/case_study_items/1').to route_to('case_study_items#show', :id => '1')
    end

    it 'routes to #edit' do
      expect(:get => '/case_study_items/1/edit').to route_to('case_study_items#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/case_study_items').to route_to('case_study_items#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/case_study_items/1').to route_to('case_study_items#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/case_study_items/1').to route_to('case_study_items#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/case_study_items/1').to route_to('case_study_items#destroy', :id => '1')
    end

  end
end