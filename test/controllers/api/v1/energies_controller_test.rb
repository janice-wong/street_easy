require 'test_helper'

class Api::V1::EnergiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_energies_index_url
    assert_response :success
  end

end
