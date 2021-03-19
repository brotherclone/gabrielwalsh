class MyRolesController < ApplicationController

  before_action :set_my_role

  def index
    @my_roles = MyRole.all
  end

  def new
    @my_role = MyRole.new
  end

  def create
    @my_role = MyRole.new(my_role_params)
  end

  def update
    @my_role.update(my_role_params)
  end

  def destroy
    @my_role.destroy
  end
  
  private

  def set_my_role
    @my_role = MyRole.find(params[:id])
  end

  def my_role_params
    params.require(:my_role).permit(:project_id, :role_name, :job_id)
  end

end