require "rails_helper"

RSpec.describe MerchLinksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/merch_links").to route_to("merch_links#index")
    end

    it "routes to #new" do
      expect(get: "/merch_links/new").to route_to("merch_links#new")
    end

    it "routes to #show" do
      expect(get: "/merch_links/1").to route_to("merch_links#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/merch_links/1/edit").to route_to("merch_links#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/merch_links").to route_to("merch_links#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/merch_links/1").to route_to("merch_links#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/merch_links/1").to route_to("merch_links#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/merch_links/1").to route_to("merch_links#destroy", id: "1")
    end
  end
end
