class CreateDtus < ActiveRecord::Migration
  def change
    create_table :dtus do |t|
      t.text :manufacturer
      t.text :model
      t.text :serialNumber
      t.text :jslgTag
      t.text :macAddress
      t.text :hostName
      t.text :department
      t.text :location
      t.text :assignedTo
      t.text :status
      t.text :notes

      t.timestamps null: false
    end
  end
end
