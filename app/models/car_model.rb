class CarModel < ApplicationRecord
  has_many :year_car_models
  has_many :years,  through: :year_car_models

  has_many :make_car_model_parts
  has_many :parts,  through: :make_car_model_parts
  has_one  :make,   through: :make_car_model_parts

end
