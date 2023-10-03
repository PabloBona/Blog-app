# require 'rails_helper'

# RSpec.describe 'Users', type: :request do
#   describe 'GET /users' do
#     it 'returns a successful response' do
#       get users_path
#       expect(response).to have_http_status(:success)
#     end

#     it 'renders the index template' do
#       get users_path
#       expect(response).to render_template(:index)
#     end

#     it 'displays the correct placeholder text in the response body' do
#       get users_path
#       expect(response.body).to include('List Users')
#       expect(response.body).to include('User 1')
#       expect(response.body).to include('User 2')
#       expect(response.body).to include('User 3')
#     end
#   end

#   describe 'GET /users/:id' do
#     let(:user) { create(:user, name: 'Pablo Bonasera') }

#     it 'returns a successful response' do
#       get user_path(user)
#       expect(response).to have_http_status(:success)
#     end

#     it 'renders the show template' do
#       get user_path(user)
#       expect(response).to render_template(:show)
#     end

#     it 'displays the correct placeholder text in the response body' do
#       get user_path(user)
#       expect(response.body).to include('User Details')
#     end
#   end
# end
