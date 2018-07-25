class Part < ApplicationRecord
  has_one :make_car_model_part
  has_one :make, through: :make_car_model_part
  has_one :car_model, through: :make_car_model_part

end
