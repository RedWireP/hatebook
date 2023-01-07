require "application_system_test_case"

class FriendsTest < ApplicationSystemTestCase
  setup do
    @friend = friends(:one)
  end

  test "visiting the index" do
    visit friends_url
    assert_selector "h1", text: "Friends"
  end

  test "should create friend" do
    visit friends_url
    click_on "New friend"

    fill_in "Dlaczego nienawidzisz", with: @friend.dlaczego_nienawidzisz
    fill_in "Frist name", with: @friend.frist_name
    fill_in "Hate", with: @friend.hate
    fill_in "Last name", with: @friend.last_name
    fill_in "Wyjasniam bo", with: @friend.wyjasniam_bo
    fill_in "You", with: @friend.you
    click_on "Create Friend"

    assert_text "Friend was successfully created"
    click_on "Back"
  end

  test "should update Friend" do
    visit friend_url(@friend)
    click_on "Edit this friend", match: :first

    fill_in "Dlaczego nienawidzisz", with: @friend.dlaczego_nienawidzisz
    fill_in "Frist name", with: @friend.frist_name
    fill_in "Hate", with: @friend.hate
    fill_in "Last name", with: @friend.last_name
    fill_in "Wyjasniam bo", with: @friend.wyjasniam_bo
    fill_in "You", with: @friend.you
    click_on "Update Friend"

    assert_text "Friend was successfully updated"
    click_on "Back"
  end

  test "should destroy Friend" do
    visit friend_url(@friend)
    click_on "Destroy this friend", match: :first

    assert_text "Friend was successfully destroyed"
  end
end
