require "application_system_test_case"

class InnapropiatesTest < ApplicationSystemTestCase
  setup do
    @innapropiate = innapropiates(:one)
  end

  test "visiting the index" do
    visit innapropiates_url
    assert_selector "h1", text: "Innapropiates"
  end

  test "creating a Innapropiate" do
    visit innapropiates_url
    click_on "New Innapropiate"

    fill_in "Comment", with: @innapropiate.comment
    fill_in "Post", with: @innapropiate.post_id
    fill_in "User", with: @innapropiate.user_id
    click_on "Create Innapropiate"

    assert_text "Innapropiate was successfully created"
    click_on "Back"
  end

  test "updating a Innapropiate" do
    visit innapropiates_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @innapropiate.comment
    fill_in "Post", with: @innapropiate.post_id
    fill_in "User", with: @innapropiate.user_id
    click_on "Update Innapropiate"

    assert_text "Innapropiate was successfully updated"
    click_on "Back"
  end

  test "destroying a Innapropiate" do
    visit innapropiates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Innapropiate was successfully destroyed"
  end
end
