class AddAvatarToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :sns_image, :string
    add_column :users, :profile, :text
  end
end
