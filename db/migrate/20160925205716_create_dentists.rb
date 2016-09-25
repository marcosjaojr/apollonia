class CreateDentists < ActiveRecord::Migration
  def change
    create_table :dentists do |t|
      t.string :name
      t.string :avatar
      t.string :phone

      t.timestamps null: false
    end
  end
end
