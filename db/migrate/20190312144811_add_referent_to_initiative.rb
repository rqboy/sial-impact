class AddReferentToInitiative < ActiveRecord::Migration[5.2]
  def change
    add_reference :initiatives, :referent, foreign_key: { to_table: :users }
  end
end
