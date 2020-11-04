class CreateTackles < ActiveRecord::Migration[6.0]
  def change
    create_table :tackles do |t|
      t.string :photo
      t.integer :category_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
