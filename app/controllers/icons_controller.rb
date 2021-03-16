class IconsController < ApplicationController

  before_action :set_icon

  private

  def set_icon
    @icon = Icon.find(params[:id])
  end

  def icon_params
    params.require(:icon).permit(:asset_url, :project_platform_id, :organization_id, :my_role_id)
  end

end