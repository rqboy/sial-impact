class AddCountryToInitiative < ActiveRecord::Migration[5.2]
  def change
    add_column :initiatives, :country, :string
  end
end
