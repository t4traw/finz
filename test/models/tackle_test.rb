# == Schema Information
#
# Table name: tackles
#
#  id          :bigint           not null, primary key
#  description :text
#  photo       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :bigint
#
# Indexes
#
#  index_tackles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class TackleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
