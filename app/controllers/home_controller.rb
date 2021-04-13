class HomeController < ApplicationController

  def index
    @show_nav = true
    projects = Project.last(2)
    @case_study_cards = []
    projects.each do |project|
      # ToDo: Add real data
      @case_study_cards << CaseStudyCardItem.new( project.id, 'img.png', 'My Thing', 'description')
    end
  end

end