require "rails_helper"

RSpec.describe OrganizationTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/organization_types").to route_to("organization_types#index")
    end

    it "routes to #new" do
      expect(get: "/organization_types/new").to route_to("organization_types#new")
    end

    it "routes to #show" do
      expect(get: "/organization_types/1").to route_to("organization_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/organization_types/1/edit").to route_to("organization_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/organization_types").to route_to("organization_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/organization_types/1").to route_to("organization_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/organization_types/1").to route_to("organization_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/organization_types/1").to route_to("organization_types#destroy", id: "1")
    end
  end
end
