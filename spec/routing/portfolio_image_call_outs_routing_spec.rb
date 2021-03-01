require "rails_helper"

RSpec.describe PortfolioImageCallOutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/portfolio_image_call_outs").to route_to("portfolio_image_call_outs#index")
    end

    it "routes to #new" do
      expect(get: "/portfolio_image_call_outs/new").to route_to("portfolio_image_call_outs#new")
    end

    it "routes to #show" do
      expect(get: "/portfolio_image_call_outs/1").to route_to("portfolio_image_call_outs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/portfolio_image_call_outs/1/edit").to route_to("portfolio_image_call_outs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/portfolio_image_call_outs").to route_to("portfolio_image_call_outs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/portfolio_image_call_outs/1").to route_to("portfolio_image_call_outs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/portfolio_image_call_outs/1").to route_to("portfolio_image_call_outs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/portfolio_image_call_outs/1").to route_to("portfolio_image_call_outs#destroy", id: "1")
    end
  end
end
