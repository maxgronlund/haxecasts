require "spec_helper"

describe FlashFilesController do
  describe "routing" do

    it "routes to #index" do
      get("/flash_files").should route_to("flash_files#index")
    end

    it "routes to #new" do
      get("/flash_files/new").should route_to("flash_files#new")
    end

    it "routes to #show" do
      get("/flash_files/1").should route_to("flash_files#show", :id => "1")
    end

    it "routes to #edit" do
      get("/flash_files/1/edit").should route_to("flash_files#edit", :id => "1")
    end

    it "routes to #create" do
      post("/flash_files").should route_to("flash_files#create")
    end

    it "routes to #update" do
      put("/flash_files/1").should route_to("flash_files#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/flash_files/1").should route_to("flash_files#destroy", :id => "1")
    end

  end
end
