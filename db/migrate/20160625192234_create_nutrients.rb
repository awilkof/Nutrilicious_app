class CreateNutrients < ActiveRecord::Migration
  def change
    create_table :nutrients do |t|
      t.references :food, index: true, foreign_key: true
      t.references :nutrient_type, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
