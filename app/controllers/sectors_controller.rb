class SectorsController < ApplicationController

  before_action :set_sector

  def index
    @sectors = Sector.all
  end

  def new
    @sector = Sector.new
  end

  def create
    @sector = Sector.new(sector_params)
  end

  def update
    @sector.update(sector_params)
  end

  def destroy
    @sector.destroy
  end
  
  private

  def set_sector
    @sector = Sector.find(params[:id])
  end

  def sector_params
    params.require(:sector).permit(:name)
  end

end