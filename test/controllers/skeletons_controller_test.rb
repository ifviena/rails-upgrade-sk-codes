require "test_helper"

class SkeletonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skeleton = skeletons(:one)
  end

  test "should get index" do
    get skeletons_url
    assert_response :success
  end

  test "should get new" do
    get new_skeleton_url
    assert_response :success
  end

  test "should create skeleton" do
    assert_difference('Skeleton.count') do
      post skeletons_url, params: { skeleton: { facts: @skeleton.facts, name: @skeleton.name } }
    end

    assert_redirected_to skeleton_url(Skeleton.last)
  end

  test "should show skeleton" do
    get skeleton_url(@skeleton)
    assert_response :success
  end

  test "should get edit" do
    get edit_skeleton_url(@skeleton)
    assert_response :success
  end

  test "should update skeleton" do
    patch skeleton_url(@skeleton), params: { skeleton: { facts: @skeleton.facts, name: @skeleton.name } }
    assert_redirected_to skeleton_url(@skeleton)
  end

  test "should destroy skeleton" do
    assert_difference('Skeleton.count', -1) do
      delete skeleton_url(@skeleton)
    end

    assert_redirected_to skeletons_url
  end
end
