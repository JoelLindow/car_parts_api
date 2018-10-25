class CarModel < ApplicationRecord
  # Car Model is only Car Types like "truck" or "car". NOT REAL CAR MODELS like "Impreza" or "F-150"
  has_many :spaghettis
  has_many :parts,  through: :spaghettis
  has_many  :makes,   through: :spaghettis
  has_one  :year,   through: :spaghettis

  validates_presence_of :name

end
