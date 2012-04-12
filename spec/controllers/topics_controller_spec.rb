require 'spec_helper'
  
describe TopicsController do
  
  # before(:each) do
  #   @topic = mock("topic")
  #   @topic.stub!(:new_rocord?).and_return(false)
  # end

  # it "should save topic and redirect to index with a notice on successful save" do
  #   Topic.should_receive(:new).and_return(@topic)
    
  #   post 'create'
  #   assigns[:topic].should equal(@topic)
  #   flash[:notice].should_not be_nil
  #   response.should redirect_to(:action => 'index')
  # end
  
  # it "should list topics in index" do
  #   topics_mock = [mock_model(Topic), mock_model(Topic)]
  #   Topic.should_receive(:all).and_return(topics_mock)

  #   get 'index'
  #   response.should be_success
  #   assigns[:topics].should == topics_mock
  # end

  # it "should instance topics" do
  #   topic_mock = mock_model(Topic)
  #   Topic.should_receive(:new).and_return(topic_mock)

  #   get 'index'
  #   response.should be_success
  #   assigns[:topics].should = topic_mock
  # end

  before(:each) do
    Topic.stub!(:new).and_return(@topic = mock_model(Topic, :save => true))
  end

  def do_create
    post :create, :topic => {:title => "value", :year => 2012}
  end

  it "should create topic" do
    Topic.should_receive(:new).with("title" => "value").and_return(@topic)
    do_create
  end





end






