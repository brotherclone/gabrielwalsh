class SayingsController < InheritedResources::Base

  before_action :set_saying

  def index
    @sayings = Saying.all
  end

  def new
    @sector = Saying.new
  end

  def create
    @sector = Saying.new(saying_params)
  end

  def update
    @sector.update(saying_params)
  end

  def destroy
    @sector.destroy
  end

  private

  def set_saying
    @sector = Saying.find(params[:id])
  end

  def saying_params
    params.require(:sector).permit(:text)
  end

end
