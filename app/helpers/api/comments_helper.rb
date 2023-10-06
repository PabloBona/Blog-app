module Api::CommentsHelper
  def authenticate_user!
    render json: { error: 'Unauthorized' }, status: :unauthorized unless current_user
  end

  def current_user
    user_id = decoded_auth_token['user_id']
    User.find_by(id: user_id)
  rescue JWT::DecodeError, ActiveRecord::RecordNotFound
    nil
  end

  def load_comments(user_id, post_id)
    user = User.find(user_id)
    post = user.posts.find(post_id)
    post.comments
  end
end
