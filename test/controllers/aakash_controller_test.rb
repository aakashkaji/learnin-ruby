require 'test_helper'

class AakashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aakash_index_url
    assert_response :success
  end

end
