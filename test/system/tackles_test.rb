require "application_system_test_case"

class TacklesTest < ApplicationSystemTestCase
  setup do
    @user = FactoryBot.create(:user, :activated)
    logged_user(@user)
  end

  test "ログインして投稿ボタンを押したら投稿ページに行ける" do
    visit(root_path)
    find("#add_tackle_button").click
    assert_equal(current_path, "/tackles/new")
  end

  test "タックルの通常投稿ができる" do
    tackle = FactoryBot.build(:tackle, user: @user)
    visit(new_tackle_path)
    file_path = Rails.root.join("test", "factories", "files", "tackle_photo1.png")
    attach_file("tackle[photo]", file_path, make_visible: true)
    click_on("登録する")
    assert_text("新しい写真を投稿しました")
  end

  test "写真の添付無しでは投稿できない" do
    tackle = FactoryBot.build(:tackle, user: @user)
    visit(new_tackle_path)
    click_on("登録する")
    assert_text("写真が選択されていません")
  end
end
