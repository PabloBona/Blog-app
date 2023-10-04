class CommentsController < ApplicationController
  before_action :set_user_and_post

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = User.first.id # Asigna el ID del usuario que crea el comentario
    @comment.post_id = @post.id # Asigna el ID del post al que se añade el comentario

    if @comment.save
      redirect_to user_post_path(@user, @post), notice: 'Comment created successfully.'
    else
      render :new
    end
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
