class PostSerializer < ActiveModel::Serializer
  attributes :author, :title, :text, :comments_counter, :likes_counter

  def author
    object.author.name
  end
end