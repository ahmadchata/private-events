require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new event' do
    get '/sessions/new'
    assert_template 'sessions/new'
    post users_path, params: { user: { name: 'Ahmad' } }
    follow_redirect!
    get '/events/new'
    assert_response :success
  end

  test 'should get show' do
    get '/events/11'
    assert true
  end
  # test "the truth" do
  #   assert true
  # end
end
