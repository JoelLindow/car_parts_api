class CreateYearCarModels < ActiveRecord::Migration[5.1]
  def change
    create_table :year_car_models do |t|
      t.references :year, foreign_key: true
      t.references :car_model, foreign_key: true

      t.timestamps
    end
  end
end
