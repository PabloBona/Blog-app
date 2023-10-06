class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :author_id, :post_id
end