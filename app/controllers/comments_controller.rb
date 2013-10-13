class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new(params[:comment])
    authorize! :create, @comment, message: "You need to be an admin to do that."
    if @comment.save
      flash[:notice] = "Comment was saved successfully."
      redirect_to @comment
    else
      flash[:error] = "Error creating comment. Please try again."
      render :new
    end
  end
end
