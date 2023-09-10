require "application_system_test_case"

class OfferjobsTest < ApplicationSystemTestCase
  setup do
    @offerjob = offerjobs(:one)
  end

  test "visiting the index" do
    visit offerjobs_url
    assert_selector "h1", text: "Offerjobs"
  end

  test "should create offerjob" do
    visit offerjobs_url
    click_on "New offerjob"

    fill_in "Description", with: @offerjob.description
    fill_in "Location", with: @offerjob.location
    fill_in "Requirements", with: @offerjob.requirements
    fill_in "Salary", with: @offerjob.salary
    fill_in "Title", with: @offerjob.title
    click_on "Create Offerjob"

    assert_text "Offerjob was successfully created"
    click_on "Back"
  end

  test "should update Offerjob" do
    visit offerjob_url(@offerjob)
    click_on "Edit this offerjob", match: :first

    fill_in "Description", with: @offerjob.description
    fill_in "Location", with: @offerjob.location
    fill_in "Requirements", with: @offerjob.requirements
    fill_in "Salary", with: @offerjob.salary
    fill_in "Title", with: @offerjob.title
    click_on "Update Offerjob"

    assert_text "Offerjob was successfully updated"
    click_on "Back"
  end

  test "should destroy Offerjob" do
    visit offerjob_url(@offerjob)
    click_on "Destroy this offerjob", match: :first

    assert_text "Offerjob was successfully destroyed"
  end
end
