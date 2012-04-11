require 'spec_helper'

describe Topic do

	before(:each) do
		@topic = Topic.new(:title => "Title", :text => "Text here")
	end

  it "should not be created without title" do
  	@topic.title = ""
  	@topic.should_not be_valid 
  end

  #doesn't work
  it "title should be unique" do
  	@topic2 = Topic.new(:title => "Title", :text => "Text here")
  	@topic2.should_not be_valid 
  end

  

end