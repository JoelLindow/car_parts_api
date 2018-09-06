class Part < ApplicationRecord
  has_one :make_car_model_part
  has_one :make, through: :make_car_model_part
  has_one :car_model, through: :make_car_model_part

  validates_presence_of :name, :description, :price
  validates_inclusion_of :oem,  in: [true, false]
end
