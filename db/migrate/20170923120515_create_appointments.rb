class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.datetime :release_date
      t.text :car
      t.text :products

      t.timestamps
    end
  end
end
