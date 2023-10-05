class CommentsController < ApplicationController
  before_action :set_user_and_post
  before_action :authenticate_user!, only: %i[create destroy]
  load_and_authorize_resource

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = User.first.id
    @comment.post_id = @comment.post

    if @comment.save
      redirect_to user_post_path(@user, @post), notice: 'Comment created successfully.'
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @post.decrement!(:comments_counter)
    @comment.destroy!
    redirect_to user_post_path(id: @post.id), notice: 'Comment deleted'
  end

  private

  def set_user_and_post
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
