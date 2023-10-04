class LikesController < ApplicationController
  before_action :set_user_and_post

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(user: current_user, post: @post)

    if @like.save
      redirect_to user_post_path(@user, @post), notice: 'Post liked successfully.'
    else
      render :new
    end
  end

  private

  def set_user_and_post
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
  end
end
