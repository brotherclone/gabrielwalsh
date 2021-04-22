class OrganizationCategoriesController < ApplicationController

  before_action :set_organization_category

  def index
    @organization_categories = OrganizationCategory.all
  end

  def new
    @organization_category = OrganizationCategory.new
  end

  def create
    @organization_category = OrganizationCategory.new(organization_category_params)
  end

  def update
    @organization_category.update(organization_category_params)
  end

  def destroy
    @organization_category.destroy
  end
  
  private

  def set_organization_category
    @organization_category = OrganizationCategory.find(params[:id])
  end

  def organization_category_params
    params.require(:organization_category).permit(:sector_id, :organization_id)
  end

end