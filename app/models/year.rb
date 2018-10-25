class Year < ApplicationRecord
  validates_presence_of :year
  has_many :spaghettis
  has_many :makes, through: :spaghettis
  has_many :car_models, through: :spaghettis
  has_many :parts, through: :spaghettis
end
