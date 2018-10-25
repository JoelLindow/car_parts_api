class Part < ApplicationRecord
  has_one :spaghetti
  has_one :make, through: :spaghetti
  has_one :car_model, through: :spaghetti
  has_one :year, through: :spaghetti

  validates_presence_of :name, :description, :price
  validates_inclusion_of :oem,  in: [true, false]


  def self.create_part(params)
    x = new(params)
    if params["oem"].to_i == 0
      x.oem = false
    elsif params["oem"].to_i == 1
      x.oem = true
    else
      x.oem = nil
    end

    if x.valid?
      x.save
      return {validity: true, message: "Part Successfully Created"}
    else
      return {validity: false, message: "ERROR: Part Creation Failed"}
    end
  end
end
