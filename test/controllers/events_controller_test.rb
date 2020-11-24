require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get "/events/new"
    assert_response :success
  end

  test 'should get show' do
    get event_path
    assert_response :success
  end
  # test "the truth" do
  #   assert true
  # end
end
