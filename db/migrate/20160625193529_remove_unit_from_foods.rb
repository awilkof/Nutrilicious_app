class RemoveUnitFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :unit_of_m, :integer
  end
end
