class DropYearCarModelsTable < ActiveRecord::Migration[5.1]
    def up
      drop_table :year_car_models
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
