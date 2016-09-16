require "rails_helper"

RSpec.describe Support::TicketsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/support/tickets").to route_to("support/tickets#index")
    end

    it "routes to #new" do
      expect(:get => "/support/tickets/new").to route_to("support/tickets#new")
    end

    it "routes to #show" do
      expect(:get => "/support/tickets/1").to route_to("support/tickets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/support/tickets/1/edit").to route_to("support/tickets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/support/tickets").to route_to("support/tickets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/support/tickets/1").to route_to("support/tickets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/support/tickets/1").to route_to("support/tickets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/support/tickets/1").to route_to("support/tickets#destroy", :id => "1")
    end

  end
end
