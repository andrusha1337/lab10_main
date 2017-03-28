require 'test_helper'

class Lab10MControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get lab10_m_input_url
    assert_response :success
  end

  test "should get output" do
    get lab10_m_output_url
    assert_response :success
  end

end
