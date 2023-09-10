require "test_helper"

class OfferjobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offerjob = offerjobs(:one)
  end

  test "should get index" do
    get offerjobs_url
    assert_response :success
  end

  test "should get new" do
    get new_offerjob_url
    assert_response :success
  end

  test "should create offerjob" do
    assert_difference("Offerjob.count") do
      post offerjobs_url, params: { offerjob: { description: @offerjob.description, location: @offerjob.location, requirements: @offerjob.requirements, salary: @offerjob.salary, title: @offerjob.title } }
    end

    assert_redirected_to offerjob_url(Offerjob.last)
  end

  test "should show offerjob" do
    get offerjob_url(@offerjob)
    assert_response :success
  end

  test "should get edit" do
    get edit_offerjob_url(@offerjob)
    assert_response :success
  end

  test "should update offerjob" do
    patch offerjob_url(@offerjob), params: { offerjob: { description: @offerjob.description, location: @offerjob.location, requirements: @offerjob.requirements, salary: @offerjob.salary, title: @offerjob.title } }
    assert_redirected_to offerjob_url(@offerjob)
  end

  test "should destroy offerjob" do
    assert_difference("Offerjob.count", -1) do
      delete offerjob_url(@offerjob)
    end

    assert_redirected_to offerjobs_url
  end
end
