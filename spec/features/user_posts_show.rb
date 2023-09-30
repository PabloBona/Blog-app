require 'rails_helper'

RSpec.feature 'Post Show Page', type: :feature do
  before do
    # Set test data: user, post, comments and likes
    @user = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1')
    @post = @user.posts.create(title: 'Post Title', text: 'Post Body')

    @comment1 = @post.comments.create(user: @user, text: 'Comment 1')
    @comment2 = @post.comments.create(user: @user, text: 'Comment 2')

    3.times do
      @post.likes.create(user: @user)
    end
  end

  scenario 'I can see post details' do
    visit user_post_path(user_id: @user.id, id: @post.id)

    # Verify that the post title is displayed
    expect(page).to have_content('Post Title')

    # Verify that the post author's name is displayed
    expect(page).to have_content('User 1')

    # Verify that the number of comments is displayed
    expect(page).to have_content('Number of Comments: 2')

    # Verify that the number of likes is displayed
    expect(page).to have_content('Number of Likes: 3')

    # Verify that the post body is displayed
    expect(page).to have_content('Post Body')

    # Verify that commenter usernames are displayed
    expect(page).to have_content('User 1')

    # Verify that commentators' comments are displayed
    expect(page).to have_content('Comment 1')
    expect(page).to have_content('Comment 2')
  end
end
