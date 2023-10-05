class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
      can :create, Post, author_id: user.id
      can :create, Comment, user_id: user.id
      # can :create, Like
      # can :destroy, Comment do |item|
      #   item.user_id == user.id
      # end
      # can :destroy, Post do |item|
      #   item.author_id == user.id
      # end
    end
  end
end
