class AddPhotoToInitiatives < ActiveRecord::Migration[5.2]
  def change
    add_column :initiatives, :photo, :string
  end
end
