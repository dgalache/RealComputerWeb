require "spec_helper"

describe EmpregadosController do
  describe "routing" do

    it "routes to #index" do
      get("/empregados").should route_to("empregados#index")
    end

    it "routes to #new" do
      get("/empregados/new").should route_to("empregados#new")
    end

    it "routes to #show" do
      get("/empregados/1").should route_to("empregados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/empregados/1/edit").should route_to("empregados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/empregados").should route_to("empregados#create")
    end

    it "routes to #update" do
      put("/empregados/1").should route_to("empregados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/empregados/1").should route_to("empregados#destroy", :id => "1")
    end

  end
end
