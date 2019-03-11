class CreateInitiativeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :initiative_users do |t|
      t.references :user, foreign_key: true
      t.references :initiative, foreign_key: true

      t.timestamps
    end
  end
end
