class RenameMakeCarModelPartToSpaghetti < ActiveRecord::Migration[5.1]
  def change
    rename_table :make_car_model_parts, :spaghettis
  end
end
