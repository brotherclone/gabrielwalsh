class CaseStudiesController < ApplicationController

  before_action :set_case_study, only: [:show, :update, :destroy]

  def index
    @show_nav = true
    @case_studies = CaseStudy.all
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