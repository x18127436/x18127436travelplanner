require 'test_helper'

class CovidControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get covid_index_url
    assert_response :success
  end

  test "should get confirmed" do
    get covid_confirmed_url
    assert_response :success
  end

  test "should get recovered" do
    get covid_recovered_url
    assert_response :success
  end

  test "should get deaths" do
    get covid_deaths_url
    assert_response :success
  end

end
