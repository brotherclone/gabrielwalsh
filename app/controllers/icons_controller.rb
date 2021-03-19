class IconsController < ApplicationController

  before_action :set_icon

  def index
    @icons = Icon.all
  end

  def new
    @icon = Icon.new
  end

  def create
    @icon = Icon.new(icon_params)
  end

  def update
    @icon.update(icon_params)
  end

  def destroy
    @icon.destroy
  end
  
  private

  def set_icon
    @icon = Icon.find(params[:id])
  end

  def icon_params
    params.require(:icon).permit(:asset_url, :project_platform_id, :organization_id, :my_role_id)
  end

end