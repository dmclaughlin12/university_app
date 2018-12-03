require 'test_helper'

class SpaControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spa_new_url
    assert_response :success
  end

  test "should get create" do
    get spa_create_url
    assert_response :success
  end

end
