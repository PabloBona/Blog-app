class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = @post.author
  end

  def post
    @user = User.find(params[:id])
    @post = Post.find(params[:post_id])
  end
end
