require 'rails_helper'

RSpec.feature 'User Show Page', type: :feature do
  before do
    # Crea un usuario para probar
    @user = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1', posts_counter: 3)
  end

  scenario 'User can see details of a specific user' do
    visit user_path(@user)

    expect(page).to have_content(@user.name)
    expect(page).to have_content(@user.bio)
    expect(page).to have_content('Number of posts: 3')
  end

  scenario 'User can see most recent posts of the user' do
    # Crea algunas publicaciones para el usuario
    post1 = @user.posts.create(title: 'Post 1', text: 'Text 1')
    post2 = @user.posts.create(title: 'Post 2', text: 'Text 2')

    visit user_path(@user)

    expect(page).to have_content("Post ##{post1.id}")
    expect(page).to have_content(post1.title)
    expect(page).to have_content("Post ##{post2.id}")
    expect(page).to have_content(post2.title)
  end

  scenario "User can click on 'See all posts' button and be redirected to the post index page" do
    visit user_path(@user)
    click_link 'See all posts'

    expect(page).to have_current_path(user_posts_path(@user))
  end
end
