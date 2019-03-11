class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.string :title
      t.integer :objective_value
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
