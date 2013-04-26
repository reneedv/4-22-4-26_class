require "spec_helper"

describe CookiesController do
  describe "routing" do

    it "routes to #index" do
      get("/cookies").should route_to("cookies#index")
    end

    it "routes to #new" do
      get("/cookies/new").should route_to("cookies#new")
    end

    it "routes to #show" do
      get("/cookies/1").should route_to("cookies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cookies/1/edit").should route_to("cookies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cookies").should route_to("cookies#create")
    end

    it "routes to #update" do
      put("/cookies/1").should route_to("cookies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cookies/1").should route_to("cookies#destroy", :id => "1")
    end

  end
end
