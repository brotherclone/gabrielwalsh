class OrganizationsController < ApplicationController

  before_action :set_organization

  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
  end

  def update
    @organization.update(organization_params)
  end

  def destroy
    @organization.destroy
  end
  
  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name, :location, :description, :logo)
  end

end