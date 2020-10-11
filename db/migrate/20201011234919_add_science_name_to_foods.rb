class AddScienceNameToFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :science_name, :string
    add_column :foods, :fdcid, :integer
  end
end
