class CarModel < ApplicationRecord
  has_many :year_car_models
  has_many :years, through :year_car_models
  belongs_to :make_car_models
end
