class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :location
      t.string :description
      t.string :model
      t.string :serial
      t.integer :price
      t.string :photo
      t.datetime :date

      t.timestamps
    end
  end
end
