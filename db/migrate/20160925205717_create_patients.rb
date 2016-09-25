class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.date :born
      t.string :avatar
      t.string :annotation

      t.timestamps null: false
    end
  end
end
