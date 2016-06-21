class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image_url
      t.integer :calories
      t.integer :serving_size
      t.integer :unit_of_m

      t.timestamps null: false
    end
  end
end
