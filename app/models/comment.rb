# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  reply_id   :bigint
#  tackle_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_comments_on_reply_id   (reply_id)
#  index_comments_on_tackle_id  (tackle_id)
#  index_comments_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (reply_id => users.id)
#  fk_rails_...  (tackle_id => tackles.id)
#  fk_rails_...  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tackle

  validates :body, presence: true
end
