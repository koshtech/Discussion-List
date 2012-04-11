require 'spec_helper'

describe Comment do

	before(:each) do
		@comment = Comment.new(:text => "comment here", :topic_id => 2)
	end

  it "should not be created without text" do
  	@comment.text = ""
  	@comment.should_not be_valid 
  end

  it "should not be created without topic_id" do
  	@comment.topic_id = nil
  	@comment.should_not be_valid
  end

end
