require "spec_helper"

describe ResourceUrlsController do
  describe "routing" do

    it "routes to #index" do
      get("/resource_urls").should route_to("resource_urls#index")
    end

    it "routes to #new" do
      get("/resource_urls/new").should route_to("resource_urls#new")
    end

    it "routes to #show" do
      get("/resource_urls/1").should route_to("resource_urls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/resource_urls/1/edit").should route_to("resource_urls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/resource_urls").should route_to("resource_urls#create")
    end

    it "routes to #update" do
      put("/resource_urls/1").should route_to("resource_urls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/resource_urls/1").should route_to("resource_urls#destroy", :id => "1")
    end

  end
end
