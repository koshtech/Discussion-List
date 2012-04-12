require 'spec_helper'
  
describe TopicsController do
  
  before(:each) do
    Topic.stub!(:new).and_return(@topic = mock_model(Topic))
  end

  def do_create
    post :create, :topic => {:title => "value"}
  end

  it "should create topic" do
    Topic.should_receive(:new).with("title" => "value").and_return(@topic)
    do_create
  end

end






