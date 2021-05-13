class MyRoleDuringJobsController < ApplicationController

  before_action :set_my_role_during_job

  def index
    @my_role_during_jobs = MyRoleDuringJob.all
  end

  def new
    @my_role_during_job = MyRoleDuringJob.new
  end

  def create
    @my_role_during_job = MyRoleDuringJob.new(my_role_during_job_params)
  end

  def update
    @my_role_during_job.update(my_role_during_job_params)
  end

  def destroy
    @my_role_during_job.destroy
  end
  
  private

  def set_my_role_during_job
    @my_role_during_job = MyRoleDuringJob.find(params[:id])
  end

  def my_role_during_job_params
    params.require(:my_role_during_job).permit(:my_role_id, :job_id)
  end

end