class OrganizationsController < ApplicationController

  before_action :set_organization

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name, :location)
  end

end