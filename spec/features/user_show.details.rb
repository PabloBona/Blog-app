require 'rails_helper'

RSpec.feature 'User Details Page', type: :feature do
  before do
    # Create a user with some posts
    @user = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1', posts_counter: 3)
    @user.posts.create(title: 'Post 1', text: 'Text 1')
    @user.posts.create(title: 'Post 2', text: 'Text 2')
    @user.posts.create(title: 'Post 3', text: 'Text 3')
  end

  scenario 'User can see details of a specific user (picture, username,bio,number of post' do
    visit user_path(@user)
    expect(page).to have_content(@user.name)
    expect(page).to have_content(@user.bio)
    expect(page).to have_content('Number of posts: 3')
    expect(page).to have_css("img[src*='url1']")
  end

  scenario "User can click on 'See all posts' button and be redirected to the post index page" do
    visit user_path(@user)
    click_link 'See all posts'
    expect(page).to have_current_path(user_posts_path(@user))
  end

  scenario "User can see the user's bio" do
    visit user_path(@user)
    expect(page).to have_content(@user.bio)
  end
end
