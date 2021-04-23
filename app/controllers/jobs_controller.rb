class JobsController < ApplicationController

  before_action :set_job

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
  end

  def update
    @job.update(job_params)
  end

  def destroy
    @job.destroy
  end
  
  
  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:organization_id, :start_date,
                                :end_date, :responsibilities, :accomplishments, :title)
  end

end
