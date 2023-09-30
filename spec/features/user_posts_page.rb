require 'rails_helper'

RSpec.feature 'User Post Index Page', type: :feature do
  before do
    # Creo un usuario para probar
    @user = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1', posts_counter: 3)

    # Creo algunas publicaciones para el usuario
    @post1 = @user.posts.create(title: 'Post 1', text: 'Text 1')
    @post2 = @user.posts.create(title: 'Post 2', text: 'Text 2')
    @post3 = @user.posts.create(title: 'Post 3', text: 'Text 3')

    # Crreo algunos comentarios y me gusta para las publicaciones
    @comment1 = @post1.comments.create(user: @user, text: 'Comment of Post 1')
    @comment2 = @post2.comments.create(user: @user, text: 'Comment of Post 2')
    @comment3 = @post3.comments.create(user: @user, text: 'Comment of Post 3')

    5.times do
      @post1.likes.create(user: @user)
      @post2.likes.create(user: @user)
      @post3.likes.create(user: @user)
    end
  end

  scenario 'I can see the user\'s profile picture, username, and number of posts' do
    visit user_posts_path(@user)

    expect(page).to have_css("img.pic-shadow[src*='url1']")
    expect(page).to have_content('User 1')
    expect(page).to have_content('Number of posts: 3')
  end

  scenario 'I can see a post\'s title, body, comments, comment count, and like count' do
    visit user_posts_path(@user)

    expect(page).to have_content('Post 1')
    expect(page).to have_content('Text 1')
    expect(page).to have_content('Post 2')
    expect(page).to have_content('Text 2')
    expect(page).to have_content('Post 3')
    expect(page).to have_content('Text 3')

    # Assuming there are comments and likes associated with posts
    expect(page).to have_content('Comment of Post 1')
    expect(page).to have_content('Comment of Post 2')
    expect(page).to have_content('Comment of Post 3')
    expect(page).to have_content('Number of Comments: 1')
    expect(page).to have_content('Number of Likes: 5')
  end

  scenario 'I can see a section for pagination if there are more posts than fit on the view' do
    10.times do |i|
      @user.posts.create(title: "Post #{i + 4}", text: "Text #{i + 4}")
    end

    visit user_posts_path(@user)

    expect(page).to have_css('.custom-pagination')
  end

  scenario 'When I click on a post, it redirects me to that post\'s show page' do
    visit user_posts_path(@user)

    click_link 'Post 1'
    expect(page).to have_current_path(post_path(@post1))

    click_link 'Post 2'
    expect(page).to have_current_path(post_path(@post2))

    click_link 'Post 3'
    expect(page).to have_current_path(post_path(@post3))
  end
end
