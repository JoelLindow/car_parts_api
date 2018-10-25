class Make < ApplicationRecord
  has_many :spaghettis
  has_many :parts, through: :spaghettis
  has_many :car_models, through: :spaghettis
  has_many :years, through: :spaghettis

  validates_presence_of :name
end
