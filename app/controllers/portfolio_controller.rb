class PortfolioController < ApplicationController

  def index
    @show_nav = true
    case_studies = CaseStudy.all
    @case_study_cards = []
    case_studies.each do |case_study|
      # ToDo: Add real data
      @case_study_cards << CaseStudyCardItem.new( case_study.id, 'img.png', 'My Thing', 'description')
    end
  end

end