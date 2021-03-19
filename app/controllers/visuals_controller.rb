class VisualsController < ApplicationController

  before_action :set_visual

  def index
    @visuals = Visual.all
  end

  def new
    @visual = Visual.new
  end

  def create
    @visual = Visual.new(visual_params)
  end

  def update
    @visual.update(visual_params)
  end

  def destroy
    @visual.destroy
  end
  
  private

  def set_visual
    @visual = Visual.find(params[:id])
  end

  def visual_params
    params.require(:visual).permit(:asset_url, :project_id, :case_study_id, :case_study_item_id)
  end

end