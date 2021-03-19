class CaseStudyItemsController < ApplicationController

  before_action :set_case_study_item, only: [:show, :edit, :update, :destroy]

  def index
    @case_study_items = CaseStudyItem.all
  end

  def show
  end

  def new
    @case_study_item = CaseStudyItem.new
  end

  def edit

  end

  def create
    @case_study_item = CaseStudyItem.new(case_study_item_params)
  end

  def update
    @case_study_item.update(case_study_item_params)
  end

  def destroy
    @case_study_item.destroy
  end

  private

  def set_case_study_item
    @case_study_item = CaseStudyItem.find(params[:id])
  end

  def case_study_item_params
    params.require(:case_study_item).permit(:case_study_id)
  end

end