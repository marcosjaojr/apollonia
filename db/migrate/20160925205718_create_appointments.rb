class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :dentist_id
      t.integer :patient_id
      t.date :date
      t.time :begin
      t.time :end
      t.string :annotation_title
      t.string :annotation

      t.timestamps null: false
    end
  end
end
