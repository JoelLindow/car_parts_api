class Year < ApplicationRecord
  has_many :year_car_models
  has_many :car_models, through :year_car_models
end
