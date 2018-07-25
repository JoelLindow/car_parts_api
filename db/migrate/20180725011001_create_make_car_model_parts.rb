class CreateMakeCarModelParts < ActiveRecord::Migration[5.1]
  def change
    create_table :make_car_model_parts do |t|
      t.references :car_model, foreign_key: true
      t.references :make, foreign_key: true
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
