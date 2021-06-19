require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "ログインページに移動できる" do
    visit login_path
    assert_text "ログイン"
  end

  test "新規ユーザーの登録ができる" do
    user = FactoryBot.build(:user)

    visit login_path
    click_link "ユーザー登録はこちら"
    assert_text "ユーザー登録"
    fill_in "user[email]", with: user[:email]
    fill_in "user[password]", with: user[:password]
    find("#user_agreement_label").click
    click_button "登録"
    assert_text "確認メールを送信しました"
  end

  test "ユーザーをフォローする事ができる" do
    logged_user

    follow_user = FactoryBot.create(:user, :activated)
    visit user_path(follow_user)
    click_button "フォロー"
    sleep 0.5
    assert_text "フォローしました"
  end

  test "ユーザーのフォローを解除する事ができる" do
    logged_user

    follow_user = FactoryBot.create(:user, :activated)
    visit user_path(follow_user)
    click_button "フォロー"
    click_button "フォロー解除"
    sleep 0.5
    assert_text "フォロー解除しました"
  end
end
