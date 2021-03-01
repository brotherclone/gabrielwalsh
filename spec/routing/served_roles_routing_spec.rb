require "rails_helper"

RSpec.describe ServedRolesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/served_roles").to route_to("served_roles#index")
    end

    it "routes to #new" do
      expect(get: "/served_roles/new").to route_to("served_roles#new")
    end

    it "routes to #show" do
      expect(get: "/served_roles/1").to route_to("served_roles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/served_roles/1/edit").to route_to("served_roles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/served_roles").to route_to("served_roles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/served_roles/1").to route_to("served_roles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/served_roles/1").to route_to("served_roles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/served_roles/1").to route_to("served_roles#destroy", id: "1")
    end
  end
end
