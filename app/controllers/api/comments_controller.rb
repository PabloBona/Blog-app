class Api::CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create], if: -> { request.format.json? }

  before_action :authenticate_user!

  def index
    comments = load_comments
    render json: comments
  end

  def create
    user = current_user
    post = Post.find(params[:post_id])
    new_comment = post.comments.new(comment_params.merge(author: user))

    if new_comment.save
      render json: { success: 'Comment added!' }
    else
      render json: { error: new_comment.errors.full_messages.join(', ') }
    end
  end

  private

  def load_comments
    user = User.find(params[:user_id])
    post = user.posts.find(params[:post_id])
    post.comments
  end

  def comment_params
    params.permit(:text)
  end

  def current_user
    user_id = decoded_auth_token['user_id']
    User.find_by(id: user_id)
  rescue JWT::DecodeError, ActiveRecord::RecordNotFound
    nil
  end

  def authenticate_user!
    render json: { error: 'Unauthorized' }, status: :unauthorized unless current_user
  end

  def decoded_auth_token
    token = request.headers['Authorization'].to_s.split.last
    JWT.decode(token, Rails.application.secret_key_base)[0]
  end
end