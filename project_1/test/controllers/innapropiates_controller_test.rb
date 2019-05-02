require 'test_helper'

class InnapropiatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @innapropiate = innapropiates(:one)
  end

  test "should get index" do
    get innapropiates_url
    assert_response :success
  end

  test "should get new" do
    get new_innapropiate_url
    assert_response :success
  end

  test "should create innapropiate" do
    assert_difference('Innapropiate.count') do
      post innapropiates_url, params: { innapropiate: { comment: @innapropiate.comment, post_id: @innapropiate.post_id, user_id: @innapropiate.user_id } }
    end

    assert_redirected_to innapropiate_url(Innapropiate.last)
  end

  test "should show innapropiate" do
    get innapropiate_url(@innapropiate)
    assert_response :success
  end

  test "should get edit" do
    get edit_innapropiate_url(@innapropiate)
    assert_response :success
  end

  test "should update innapropiate" do
    patch innapropiate_url(@innapropiate), params: { innapropiate: { comment: @innapropiate.comment, post_id: @innapropiate.post_id, user_id: @innapropiate.user_id } }
    assert_redirected_to innapropiate_url(@innapropiate)
  end

  test "should destroy innapropiate" do
    assert_difference('Innapropiate.count', -1) do
      delete innapropiate_url(@innapropiate)
    end

    assert_redirected_to innapropiates_url
  end
end
