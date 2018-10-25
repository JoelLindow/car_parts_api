class Spaghetti < ApplicationRecord
  belongs_to :car_model
  belongs_to :make
  belongs_to :part
  belongs_to :year
end
