class PostsController < ApplicationController
  before_filter :find_post

  def index
    @posts = Post.limit(5)
  end

  def show
  end

  private
  def find_post
    @post = Post.find(params[:id]) if params[:id]
  end
end
