class CreateInitiatives < ActiveRecord::Migration[5.2]
  def change
    create_table :initiatives do |t|
      t.string :name
      t.text :description
      t.string :sector_activity
      t.integer :budget

      t.timestamps
    end
  end
end
