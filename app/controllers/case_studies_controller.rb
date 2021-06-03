class CaseStudiesController < ApplicationController

  before_action :set_case_study, only: [:show, :update, :destroy]

  def index
    @show_nav = true
    @case_studies = CaseStudy.all
    # ToDo: Add real data

    @case_study_cards = []

    # case_studies = CaseStudy.last(2)
    # case_studies.each do |case_study|
    #   @case_study_cards << CaseStudyCardItem.new( case_study.id, 'img.png', 'My Thing', 'description')
    # end

    (0...3).each do |case_study|
      @case_study_cards << CaseStudyCardItem.new( 1, 'https://via.placeholder.com/600', 'My Thing', 'description')
    end
  end

  def new
    @case_study = CaseStudy.new
  end

  def create
    @case_study = CaseStudy.new(case_study_params)
  end

  def update
    @case_study.update(case_study_params)
  end

  def destroy
    @case_study.destroy
  end

  def show
    @show_nav = true
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @case_study}
    end
  end

  private

  def set_case_study
    @case_study = CaseStudy.find(params[:id])
  end

  def case_study_params
    params.require(:case_study).permit(:project_id, :sub_title, :description, :large_visual)
  end

end