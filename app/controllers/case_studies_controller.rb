class CaseStudiesController < ApplicationController

  before_action :set_case_study

  def index
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

  private

  def set_case_study
    @case_study = CaseStudy.find(params[:id])
  end

  def case_study_params
    params.require(:case_study).permit(:project_id, :sub_title, :description, :large_visual)
  end

end