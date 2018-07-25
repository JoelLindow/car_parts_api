class MakeCarModel < ApplicationRecord
  belongs_to :car_model
  belongs_to :make
end
