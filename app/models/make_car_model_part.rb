class MakeCarModelPart < ApplicationRecord
  belongs_to :car_model
  belongs_to :make
  belongs_to :part
end
