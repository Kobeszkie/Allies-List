require "application_system_test_case"

class AlliesTest < ApplicationSystemTestCase
  setup do
    @ally = allies(:one)
  end

  test "visiting the index" do
    visit allies_url
    assert_selector "h1", text: "Allies"
  end

  test "should create ally" do
    visit allies_url
    click_on "New ally"

    fill_in "Email", with: @ally.email
    fill_in "First name", with: @ally.first_name
    fill_in "Last name", with: @ally.last_name
    fill_in "Phone", with: @ally.phone
    fill_in "Twitter", with: @ally.twitter
    click_on "Create Ally"

    assert_text "Ally was successfully created"
    click_on "Back"
  end

  test "should update Ally" do
    visit ally_url(@ally)
    click_on "Edit this ally", match: :first

    fill_in "Email", with: @ally.email
    fill_in "First name", with: @ally.first_name
    fill_in "Last name", with: @ally.last_name
    fill_in "Phone", with: @ally.phone
    fill_in "Twitter", with: @ally.twitter
    click_on "Update Ally"

    assert_text "Ally was successfully updated"
    click_on "Back"
  end

  test "should destroy Ally" do
    visit ally_url(@ally)
    click_on "Destroy this ally", match: :first

    assert_text "Ally was successfully destroyed"
  end
end
