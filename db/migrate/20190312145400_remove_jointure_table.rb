class RemoveJointureTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :intiative_users
  end
end
