require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get comments_new_url
    assert_response :success
  end

  test "should get create" do
    get comments_create_url
    assert_response :success
  end
end
