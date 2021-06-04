class CaseStudiesController < ApplicationController

  before_action :set_case_study, only: [:show, :update, :destroy]

  helper_method :sort_direction

  def index
    @show_nav = true

    if params[:sort] == 'name'
      @case_studies = CaseStudy.all.order("sub_title #{sort_direction}")
    elsif params[:sort] == 'created_at'
      @case_studies = CaseStudy.all.order("created_at #{sort_direction}")
    else
      @case_studies = CaseStudy.all
    end

    @case_study_cards = []

    @case_studies.each do |case_study|
      @case_study_cards << CaseStudyCardItem.new( case_study.id, 'https://via.placeholder.com/600', case_study.project.title, case_study.sub_title)
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

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

end