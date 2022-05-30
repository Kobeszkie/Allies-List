require "test_helper"

class AlliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ally = allies(:one)
  end

  test "should get index" do
    get allies_url
    assert_response :success
  end

  test "should get new" do
    get new_ally_url
    assert_response :success
  end

  test "should create ally" do
    assert_difference("Ally.count") do
      post allies_url, params: { ally: { email: @ally.email, first_name: @ally.first_name, last_name: @ally.last_name, phone: @ally.phone, twitter: @ally.twitter } }
    end

    assert_redirected_to ally_url(Ally.last)
  end

  test "should show ally" do
    get ally_url(@ally)
    assert_response :success
  end

  test "should get edit" do
    get edit_ally_url(@ally)
    assert_response :success
  end

  test "should update ally" do
    patch ally_url(@ally), params: { ally: { email: @ally.email, first_name: @ally.first_name, last_name: @ally.last_name, phone: @ally.phone, twitter: @ally.twitter } }
    assert_redirected_to ally_url(@ally)
  end

  test "should destroy ally" do
    assert_difference("Ally.count", -1) do
      delete ally_url(@ally)
    end

    assert_redirected_to allies_url
  end
end
