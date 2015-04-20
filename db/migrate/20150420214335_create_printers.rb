class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.text :manufacturer
      t.text :model
      t.text :mrcId
      t.text :jslgTag
      t.text :serialNumber
      t.text :hostName
      t.text :ipAddress
      t.text :department
      t.text :location
      t.text :assignedTo
      t.text :status
      t.text :notes

      t.timestamps null: false
    end
  end
end
