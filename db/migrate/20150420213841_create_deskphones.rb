class CreateDeskphones < ActiveRecord::Migration
  def change
    create_table :deskphones do |t|
      t.text :manufacturer
      t.text :model
      t.text :serialNumber
      t.text :phoneNumber
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
