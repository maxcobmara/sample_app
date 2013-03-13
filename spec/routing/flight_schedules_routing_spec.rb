require "spec_helper"

describe FlightSchedulesController do
  describe "routing" do

    it "routes to #index" do
      get("/flight_schedules").should route_to("flight_schedules#index")
    end

    it "routes to #new" do
      get("/flight_schedules/new").should route_to("flight_schedules#new")
    end

    it "routes to #show" do
      get("/flight_schedules/1").should route_to("flight_schedules#show", :id => "1")
    end

    it "routes to #edit" do
      get("/flight_schedules/1/edit").should route_to("flight_schedules#edit", :id => "1")
    end

    it "routes to #create" do
      post("/flight_schedules").should route_to("flight_schedules#create")
    end

    it "routes to #update" do
      put("/flight_schedules/1").should route_to("flight_schedules#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/flight_schedules/1").should route_to("flight_schedules#destroy", :id => "1")
    end

  end
end
