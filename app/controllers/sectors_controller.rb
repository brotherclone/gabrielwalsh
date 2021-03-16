class SectorsController < ApplicationController

  before_action :set_sector

  private

  def set_sector
    @sector = Sector.find(params[:id])
  end

  def sector_params
    params.require(:sector).permit(:name, :organization_id)
  end

end