class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.text :manufacturer
      t.text :model
      t.text :jslgTag
      t.text :manufacturerTag
      t.text :serialNumber
      t.text :osType
      t.text :hostName
      t.text :ram
      t.text :hdd
      t.text :department
      t.text :location
      t.text :assignedTo
      t.text :status
      t.text :notes

      t.timestamps null: false
    end
  end
end
