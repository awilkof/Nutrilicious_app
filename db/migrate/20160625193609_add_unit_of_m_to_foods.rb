class AddUnitOfMToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :unit_of_m, :string
  end
end
