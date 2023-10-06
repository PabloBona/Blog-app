class PostSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :text, :comments_counter, :likes_counter

  def author
    object.author.name
  end
end
