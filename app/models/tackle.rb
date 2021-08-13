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
class Tackle < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  acts_as_taggable

  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: { message: "が選択されていません。" }
end
