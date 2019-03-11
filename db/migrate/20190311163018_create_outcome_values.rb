class CreateOutcomeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :outcome_values do |t|
      t.integer :value
      t.references :outcome, foreign_key: true

      t.timestamps
    end
  end
end
