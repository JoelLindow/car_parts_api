class CreateMakeCarModels < ActiveRecord::Migration[5.1]
  def change
    create_table :make_car_models do |t|
      t.references :car_model, foreign_key: true
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
