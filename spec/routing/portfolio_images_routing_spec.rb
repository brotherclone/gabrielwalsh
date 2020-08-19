require "rails_helper"

RSpec.describe PortfolioImagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/portfolio_images").to route_to("portfolio_images#index")
    end

    it "routes to #new" do
      expect(get: "/portfolio_images/new").to route_to("portfolio_images#new")
    end

    it "routes to #show" do
      expect(get: "/portfolio_images/1").to route_to("portfolio_images#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/portfolio_images/1/edit").to route_to("portfolio_images#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/portfolio_images").to route_to("portfolio_images#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/portfolio_images/1").to route_to("portfolio_images#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/portfolio_images/1").to route_to("portfolio_images#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/portfolio_images/1").to route_to("portfolio_images#destroy", id: "1")
    end
  end
end
