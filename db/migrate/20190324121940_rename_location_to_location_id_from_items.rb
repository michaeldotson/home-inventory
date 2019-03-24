class RenameLocationToLocationIdFromItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :location, :location_id
  end
end
