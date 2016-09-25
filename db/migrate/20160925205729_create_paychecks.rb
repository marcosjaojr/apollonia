class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.integer :appointment_id
      t.float :value
      t.boolean :is_payed

      t.timestamps null: false
    end
  end
end
