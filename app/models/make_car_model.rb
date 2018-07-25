class MakeCarModel < ApplicationRecord
  belongs_to :car_model
  belongs_to :make
  has_many :parts
end
