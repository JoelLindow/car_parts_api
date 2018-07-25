class Make < ApplicationRecord
  has_many :make_car_model_parts
  has_many :parts, through: :make_car_model_parts
  has_many :car_models, through: :make_car_model_parts
end
