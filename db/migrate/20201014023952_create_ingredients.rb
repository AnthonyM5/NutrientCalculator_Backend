class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :servings
      t.float :portion
      t.belongs_to :food, null: false, foreign_key: true
      t.belongs_to :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
