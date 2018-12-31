require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get accounts_index,_url
    assert_response :success
  end

  test "should get show," do
    get accounts_show,_url
    assert_response :success
  end

  test "should get create," do
    get accounts_create,_url
    assert_response :success
  end

  test "should get update," do
    get accounts_update,_url
    assert_response :success
  end

  test "should get destroy" do
    get accounts_destroy_url
    assert_response :success
  end

end
