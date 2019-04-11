require 'test_helper'

class SuperAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_admin = super_admins(:one)
  end

  test "should get index" do
    get super_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_super_admin_url
    assert_response :success
  end

  test "should create super_admin" do
    assert_difference('SuperAdmin.count') do
      post super_admins_url, params: { super_admin: { bio: @super_admin.bio, email: @super_admin.email, latitude: @super_admin.latitude, longitude: @super_admin.longitude, password: @super_admin.password, post: @super_admin.post, string: @super_admin.string, username: @super_admin.username } }
    end

    assert_redirected_to super_admin_url(SuperAdmin.last)
  end

  test "should show super_admin" do
    get super_admin_url(@super_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_admin_url(@super_admin)
    assert_response :success
  end

  test "should update super_admin" do
    patch super_admin_url(@super_admin), params: { super_admin: { bio: @super_admin.bio, email: @super_admin.email, latitude: @super_admin.latitude, longitude: @super_admin.longitude, password: @super_admin.password, post: @super_admin.post, string: @super_admin.string, username: @super_admin.username } }
    assert_redirected_to super_admin_url(@super_admin)
  end

  test "should destroy super_admin" do
    assert_difference('SuperAdmin.count', -1) do
      delete super_admin_url(@super_admin)
    end

    assert_redirected_to super_admins_url
  end
end
