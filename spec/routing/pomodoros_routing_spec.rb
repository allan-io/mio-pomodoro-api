require "rails_helper"

RSpec.describe PomodorosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pomodoros").to route_to("pomodoros#index")
    end


    it "routes to #show" do
      expect(:get => "/pomodoros/1").to route_to("pomodoros#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/pomodoros").to route_to("pomodoros#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pomodoros/1").to route_to("pomodoros#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pomodoros/1").to route_to("pomodoros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pomodoros/1").to route_to("pomodoros#destroy", :id => "1")
    end

  end
end
