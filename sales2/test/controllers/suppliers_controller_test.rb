require 'test_helper'

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get suppliers_new_url
    assert_response :success
  end

end
