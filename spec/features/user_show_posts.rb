require 'rails_helper'

RSpec.feature 'User Posts Page', type: :feature do
  before do
    # create a user with some posts
    @user = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1', posts_counter: 3)
    @user.posts.create(title: 'Post 1', text: 'Text 1')
    @user.posts.create(title: 'Post 2', text: 'Text 2')
    @user.posts.create(title: 'Post 3', text: 'Text 3')
  end

  scenario 'User can see most recent posts of the user' do
    visit user_path(@user)

    # Check that the titles of the first 3 posts are present on the page
    expect(page).to have_content('Post 1')
    expect(page).to have_content('Post 2')
    expect(page).to have_content('Post 3')

    # Check that the title of the fourth post is not present on the page
    expect(page).to_not have_content('Post 4')
  end

  scenario "User can see the user's first 3 posts" do
    visit user_path(@user)

    # check that the titles of the first 3 posts are present on the page
    expect(page).to have_content('Post 1')
    expect(page).to have_content('Post 2')
    expect(page).to have_content('Post 3')

    # Check that the title of the fourth post is not present on the page
    expect(page).to_not have_content('Post 4')
  end

  scenario "When I click 'click user's post link, it redirects me to that post's show page" do
    visit user_posts_path(@user)
    click_link 'Number of posts'

    # expect(page).to have_current_path(user_post_path(@user, @post))
    expect(page).to have_current_path(user_posts_path(@user))

    # expect(page).to have_content('Post 1')
    expect(page).to have_content('Post 1')
  end

  scenario "I can see a button that lets me view all of a user's posts" do
    visit user_path(@user)

    # expect(page).to have_link('See all posts', href: user_post_path(@user, @post))
    expect(page).to have_link('See all posts', href: user_posts_path(@user))
  end
end
