class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :comments, foreign_key: :user_id, dependent: :destroy
  has_many :likes, foreign_key: :user_id, dependent: :destroy

  enum role: %i[user admin]

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  # Validaciones
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
