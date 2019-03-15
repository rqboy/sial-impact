class AddObjectiveToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :objective, :float
  end
end
