require 'test_helper'

class FavouriteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get favourite_new_url
    assert_response :success
  end

  test "should get index" do
    get favourite_index_url
    assert_response :success
  end

end
