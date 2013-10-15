class CommentsController < ApplicationController
  respond_to :html, :js

  def new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id])
    @comments = @post.comments

    @comment = current_user.comments.build(params[:comment])
    @comment.post = @post

    authorize! :create, @comment, message: "You need to be signed in to do that."

    if @comment.save
      flash[:notice] = "Comment was saved successfully."
    else
      flash[:error] = "Error creating comment. Please try again."
    end
  end
end
