require 'test_helper'

class FindControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get find_contact_url
    assert_response :success
  end

end
