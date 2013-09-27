class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def next
  end

  def edit
  end
end
