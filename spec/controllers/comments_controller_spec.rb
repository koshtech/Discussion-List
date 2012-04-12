require 'spec_helper'

describe CommentsController do

  before(:each) do
    @topic = mock("topic")
    @topic.stub!(:new_record?).and_return(false)
    @comment = mock("comment")
    @commnet.stub!(:new_record?).and_return(false)
  end

  it "should save comment" do
    Comment.should_receive(:create).and_return(@comment)
    
    post 'create'
    assigns[:comment].should equal(@comment)
    response.should redirect_to( topic_path(:topic) )
  end
end
