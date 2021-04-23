class ProjectsController < ApplicationController

  before_action :set_project

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  def update
    @project.update(project_params)
  end

  def destroy
    @project.destroy
  end
  
  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:organization_id, :title, :working_date, :publish_date,
                                    :description, :small_image, :large_image)
  end

end