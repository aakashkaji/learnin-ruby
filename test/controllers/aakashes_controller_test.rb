require 'test_helper'

class AakashesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aakashes_index_url
    assert_response :success
  end

end
