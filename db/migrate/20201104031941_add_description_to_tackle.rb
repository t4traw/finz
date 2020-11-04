class AddDescriptionToTackle < ActiveRecord::Migration[6.0]
  def change
    add_column :tackles, :description, :text
  end
end
