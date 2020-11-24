require 'test_helper'

class CreateUsersControllerTest < ActionDispatch::IntegrationTest
  test 'get user form and create user' do
    get '/users/new'
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'Chata' } }
      follow_redirect!
    end
    assert_response :success
  end
  # test "the truth" do
  #   assert true
  # end
end
