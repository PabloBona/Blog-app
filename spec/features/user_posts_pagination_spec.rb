require 'rails_helper'
require 'support/test_data'

RSpec.feature 'User Post Index Page Pagination', type: :feature do
  include TestData

  before do
    setup_test_data
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

    # Find and click on the link in the first post
    first('.user-name a.unstyled').click
    expect(page).to have_current_path(user_post_path(user_id: @user.id, id: @post1.id))

    # Return to the user's posts page
    visit user_posts_path(@user)

    # Find and click on the link in the second post
    all('.user-name a.unstyled')[1].click
    expect(page).to have_current_path(user_post_path(user_id: @user.id, id: @post2.id))

    # Return to the user's posts page
    visit user_posts_path(@user)

    # Find and click on the link in the third post
    all('.user-name a.unstyled')[2].click
    expect(page).to have_current_path(user_post_path(user_id: @user.id, id: @post3.id))
  end
end
