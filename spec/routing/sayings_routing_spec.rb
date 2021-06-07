require "rails_helper"

RSpec.describe SayingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sayings").to route_to("sayings#index")
    end

    it "routes to #new" do
      expect(get: "/sayings/new").to route_to("sayings#new")
    end

    it "routes to #show" do
      expect(get: "/sayings/1").to route_to("sayings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/sayings/1/edit").to route_to("sayings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/sayings").to route_to("sayings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sayings/1").to route_to("sayings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sayings/1").to route_to("sayings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sayings/1").to route_to("sayings#destroy", id: "1")
    end
  end
end
