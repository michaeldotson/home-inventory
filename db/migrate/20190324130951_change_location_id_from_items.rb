class ChangeLocationIdFromItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :location_id, 'integer USING CAST(location_id AS integer)'
  end
end
