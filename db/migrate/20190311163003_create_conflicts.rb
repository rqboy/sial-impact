class CreateConflicts < ActiveRecord::Migration[5.2]
  def change
    create_table :conflicts do |t|
      t.text :description
      t.references :outcome, foreign_key: true

      t.timestamps
    end
  end
end
