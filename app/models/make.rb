class Make < ApplicationRecord
  belongs_to :make_car_models
  has_many :make_car_models
  has_many :car_models, through :make_car_models
end
