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
FactoryBot.define do
  factory :tackle do
    photo {Rack::Test::UploadedFile.new(File.join(Rails.root, "test/factories/files/tackle_photo1.png"))}
    user
  end
end
