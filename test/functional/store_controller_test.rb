require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
	assert_select "#main .entry"
	assert_select "h3", "Alice in Wonderland"
  end

end
