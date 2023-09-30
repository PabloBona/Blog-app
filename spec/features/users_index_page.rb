require 'rails_helper'

RSpec.feature 'User Index Page', type: :feature do
  before do
    # Crea algunos usuarios para probar
    @user1 = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1', posts_counter: 3)
    @user2 = User.create(name: 'User 2', photo: 'url2', bio: 'Bio 2', posts_counter: 5)
  end

  scenario 'User can see the username of all other users' do
    visit users_path

    expect(page).to have_content(@user1.name)
    expect(page).to have_content(@user2.name)
  end

  scenario 'User can see the profile picture and the number of posts each user has written' do
    visit users_path

    expect(page).to have_css("img[src*='url1']")
    expect(page).to have_css("img[src*='url2']")

    expect(page).to have_content('Number of posts: 3')
    expect(page).to have_content('Number of posts: 5')
  end

  scenario 'User can click on a user and be redirected to their show page' do
    visit users_path
    click_link 'User 1'

    expect(page).to have_current_path(user_path(@user1))
  end
end
