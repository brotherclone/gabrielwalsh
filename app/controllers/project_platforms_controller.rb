class ProjectPlatformsController < ApplicationController

  before_action :set_project_platform

  def index
    @project_platforms = ProjectPlatform.all
  end

  def new
    @project_platform = ProjectPlatform.new
  end

  def create
    @project_platform = ProjectPlatform.new(project_platform_params)
  end

  def update
    @project_platform.update(project_platform_params)
  end

  def destroy
    @project_platform.destroy
  end

  private

  def set_project_platform
    @project_platform = ProjectPlatform.find(params[:id])
  end

  def project_platform_params
    params.require(:project_platform).permit(:project_id, :platform_name, :description, :logo)
  end

end
