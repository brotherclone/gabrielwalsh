class HomeController < ApplicationController

  def index
    @show_nav = true
    # ToDo: Add real data

    @case_study_cards = []

    # case_studies = CaseStudy.last(2)
    # case_studies.each do |case_study|
    #   @case_study_cards << CaseStudyCardItem.new( case_study.id, 'img.png', 'My Thing', 'description')
    # end

    (0...3).each do |case_study|
       @case_study_cards << CaseStudyCardItem.new( 1, 'https://via.placeholder.com/200', 'My Thing', 'description')
    end

  end

end