require "application_system_test_case"

class UserSessionsTest < ApplicationSystemTestCase
  test "ログインしていない状態で投稿ボタンを押したらログインページに移動する" do
    visit(root_path)
    find("#add_tackle_button").click
    assert_equal(current_path, "/login")
  end
end
