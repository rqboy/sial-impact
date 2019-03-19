class ChangeOutcomesObjectiveType < ActiveRecord::Migration[5.2]
  def change
    change_column :outcomes, :objective_value, :float
  end
end
