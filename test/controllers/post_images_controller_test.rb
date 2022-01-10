require "test_helper"

class PostImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_images_new_url
    assert_response :success
  end

  test "should get imdex" do
    get post_images_imdex_url
    assert_response :success
  end

  test "should get show" do
    get post_images_show_url
    assert_response :success
  end
end
