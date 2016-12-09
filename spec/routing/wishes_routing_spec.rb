require "rails_helper"

RSpec.describe WishesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wishes").to route_to("wishes#index")
    end

    it "routes to #new" do
      expect(:get => "/wishes/new").to route_to("wishes#new")
    end

    it "routes to #show" do
      expect(:get => "/wishes/1").to route_to("wishes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wishes/1/edit").to route_to("wishes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wishes").to route_to("wishes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wishes/1").to route_to("wishes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wishes/1").to route_to("wishes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wishes/1").to route_to("wishes#destroy", :id => "1")
    end

  end
end
