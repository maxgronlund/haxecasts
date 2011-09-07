require "spec_helper"

describe CodeExamplesController do
  describe "routing" do

    it "routes to #index" do
      get("/code_examples").should route_to("code_examples#index")
    end

    it "routes to #new" do
      get("/code_examples/new").should route_to("code_examples#new")
    end

    it "routes to #show" do
      get("/code_examples/1").should route_to("code_examples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/code_examples/1/edit").should route_to("code_examples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/code_examples").should route_to("code_examples#create")
    end

    it "routes to #update" do
      put("/code_examples/1").should route_to("code_examples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/code_examples/1").should route_to("code_examples#destroy", :id => "1")
    end

  end
end
