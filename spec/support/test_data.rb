# spec/support/test_data.rb

module TestData
  def setup_test_data
    # Crear un usuario para la prueba
    @user = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1', posts_counter: 3)

    # Crear algunas publicaciones para el usuario
    @post1 = @user.posts.create(title: 'Post 1', text: 'Text 1')
    @post2 = @user.posts.create(title: 'Post 2', text: 'Text 2')
    @post3 = @user.posts.create(title: 'Post 3', text: 'Text 3')

    # Crear algunos comentarios y me gusta para las publicaciones
    @comment1 = @post1.comments.create(user: @user, text: 'Comment of Post 1')
    @comment2 = @post2.comments.create(user: @user, text: 'Comment of Post 2')
    @comment3 = @post3.comments.create(user: @user, text: 'Comment of Post 3')

    5.times do
      @post1.likes.create(user: @user)
      @post2.likes.create(user: @user)
      @post3.likes.create(user: @user)
    end
  end
end
