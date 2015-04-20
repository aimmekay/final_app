class CreateToners < ActiveRecord::Migration
  def change
    create_table :toners do |t|
      t.text :manufacturer
      t.text :model
      t.text :color
      t.text :replacementId
      t.text :quantity

      t.timestamps null: false
    end
  end
end
