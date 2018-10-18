class CarModel < ApplicationRecord
  # Car Model is only Car Types like "truck" or "car". NOT REAL CAR MODELS like "Impreza" or "F-150"
  has_many :year_car_models
  has_many :years,  through: :year_car_models

  has_many :make_car_model_parts
  has_many :parts,  through: :make_car_model_parts
  has_one  :make,   through: :make_car_model_parts

  validates_presence_of :name

end
