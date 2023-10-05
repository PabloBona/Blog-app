class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy]
  load_and_authorize_resource
  before_action :set_user, only: %i[new create]

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:author, :comments, :likes).page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @like = Like.new
    @comment = Comment.new
  end

  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.build(post_params)

    if @post.save
      redirect_to user_post_path(@user, @post), notice: 'Post created successfully.'
    else
      render :new
    end

    def destroy # rubocop:disable Lint/NestedMethodDefinition
      @post = Post.find(params[:id])
      author = @post.author
      author.decrement!(:posts_counter)
      @post.destroy!
      redirect_to user_posts_path(id: author.id), notice: 'Post deleted!'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
