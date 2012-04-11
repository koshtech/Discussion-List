class CommentsController < ApplicationController
  def create
  	@topic = Topic.find(params[:topic_id])
  	@comment = @topic.comments.build(params[:comment])
  	@topic.save
    @comment.save

  	redirect_to @topic
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment.topic
  end
end
