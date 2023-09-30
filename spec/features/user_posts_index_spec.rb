require 'rails_helper'
require 'support/test_data'

RSpec.feature 'User Post Index Page', type: :feature do
  include TestData

  before do
    setup_test_data
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
end
