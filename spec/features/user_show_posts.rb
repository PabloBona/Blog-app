require 'rails_helper'

RSpec.feature 'User Posts Page', type: :feature do
  before do
    # Crear un usuario con algunas publicaciones
    @user = User.create(name: 'User 1', photo: 'url1', bio: 'Bio 1', posts_counter: 3)
    @user.posts.create(title: 'Post 1', text: 'Text 1')
    @user.posts.create(title: 'Post 2', text: 'Text 2')
    @user.posts.create(title: 'Post 3', text: 'Text 3')
  end

  scenario 'User can see most recent posts of the user' do
    visit user_path(@user)

    # Verificar que los títulos de las últimas publicaciones estén presentes en la página
    expect(page).to have_content('Post 1')
    expect(page).to have_content('Post 2')
    expect(page).to have_content('Post 3')

    # Verificar que el título de la cuarta publicación no esté presente en la página
    expect(page).to_not have_content('Post 4')
  end

  scenario "User can see the user's first 3 posts" do
    visit user_path(@user)

    # Verificar que los títulos de las primeras 3 publicaciones estén presentes en la página
    expect(page).to have_content('Post 1')
    expect(page).to have_content('Post 2')
    expect(page).to have_content('Post 3')

    # Verificar que el título de la cuarta publicación no esté presente en la página
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
end
