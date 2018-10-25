class AddYearToMakeCarModelParts < ActiveRecord::Migration[5.1]
  def change
    add_reference :make_car_model_parts, :year, foreign_key: true
  end
end
