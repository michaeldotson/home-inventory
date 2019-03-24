class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
