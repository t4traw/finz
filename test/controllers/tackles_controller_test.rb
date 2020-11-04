# require 'test_helper'

# class TacklesControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @tackle = tackles(:one)
#   end

#   test "should get index" do
#     get tackles_url
#     assert_response :success
#   end

#   test "should get new" do
#     get new_tackle_url
#     assert_response :success
#   end

#   test "should create tackle" do
#     assert_difference('Post.count') do
#       post tackles_url, params: { tackle: { body: @tackle.body, category: @tackle.category, photo: @tackle.photo, title: @tackle.title, user: @tackle.user } }
#     end

#     assert_redirected_to tackle_url(Post.last)
#   end

#   test "should show post" do
#     get tackle_url(@tackle)
#     assert_response :success
#   end

#   test "should get edit" do
#     get edit_post_url(@tackle)
#     assert_response :success
#   end

#   test "should update post" do
#     patch post_url(@tackle), params: { post: { body: @tackle.body, category: @tackle.category, photo: @tackle.photo, title: @tackle.title, user: @tackle.user } }
#     assert_redirected_to post_url(@tackle)
#   end

#   test "should destroy post" do
#     assert_difference('Post.count', -1) do
#       delete post_url(@tackle)
#     end

#     assert_redirected_to posts_url
#   end
# end
