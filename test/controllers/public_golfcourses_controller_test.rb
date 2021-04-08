require 'test_helper'

class PublicGolfcoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_golfcourses_index_url
    assert_response :success
  end

  test "should get show" do
    get public_golfcourses_show_url
    assert_response :success
  end

end
