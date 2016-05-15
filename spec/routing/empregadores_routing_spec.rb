require "spec_helper"

describe EmpregadoresController do
  describe "routing" do

    it "routes to #index" do
      get("/empregadores").should route_to("empregadores#index")
    end

    it "routes to #new" do
      get("/empregadores/new").should route_to("empregadores#new")
    end

    it "routes to #show" do
      get("/empregadores/1").should route_to("empregadores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/empregadores/1/edit").should route_to("empregadores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/empregadores").should route_to("empregadores#create")
    end

    it "routes to #update" do
      put("/empregadores/1").should route_to("empregadores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/empregadores/1").should route_to("empregadores#destroy", :id => "1")
    end

  end
end
