require "spec_helper"

describe OrdensController do
  describe "routing" do

    it "routes to #index" do
      get("/ordens").should route_to("ordens#index")
    end

    it "routes to #new" do
      get("/ordens/new").should route_to("ordens#new")
    end

    it "routes to #show" do
      get("/ordens/1").should route_to("ordens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ordens/1/edit").should route_to("ordens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ordens").should route_to("ordens#create")
    end

    it "routes to #update" do
      put("/ordens/1").should route_to("ordens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ordens/1").should route_to("ordens#destroy", :id => "1")
    end

  end
end
