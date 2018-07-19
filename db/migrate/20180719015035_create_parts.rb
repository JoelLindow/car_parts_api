class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.text :description
      t.boolean :oem
      t.float :price

      t.timestamps
    end
  end
end
