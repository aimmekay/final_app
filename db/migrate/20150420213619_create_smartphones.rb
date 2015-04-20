class CreateSmartphones < ActiveRecord::Migration
  def change
    create_table :smartphones do |t|
      t.text :manufacturer
      t.text :model
      t.text :carrier
      t.text :phoneNumber
      t.text :serialNumber
      t.text :meid
      t.text :macAddress
      t.text :department
      t.text :location
      t.text :assignedTo
      t.text :status
      t.text :notes

      t.timestamps null: false
    end
  end
end
