class ChangeOutcomesValuesObjectiveType < ActiveRecord::Migration[5.2]
  def change
    change_column :outcome_values, :value, :float
  end
end
