class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :reply, foreign_key: { to_table: :users }
      t.references :tackle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
