class AddMakeCarModelsColumnToParts < ActiveRecord::Migration[5.1]
  def change
    add_reference :parts, :make_car_model, foreign_key: true
  end
end
