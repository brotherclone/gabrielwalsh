class MyRoleOnProjectsController < ApplicationController

  before_action :set_my_role_on_project

  def index
    @my_role_on_projects = MyRoleOnProject.all
  end

  def new
    @my_role_on_project = MyRoleOnProject.new
  end

  def create
    @my_role_on_project = MyRoleOnProject.new(my_role_on_project_params)
  end

  def update
    @my_role_on_project.update(my_role_on_project_params)
  end

  def destroy
    @my_role_on_project.destroy
  end
  
  private

  def set_my_role_on_project
    @my_role_on_project = MyRoleOnProject.find(params[:id])
  end

  def my_role_on_project_params
    params.require(:my_role_on_project).permit(:my_role_id, :project_id)
  end

end