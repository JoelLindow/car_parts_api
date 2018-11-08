class Part < ApplicationRecord
  has_one :spaghetti
  has_one :make, through: :spaghetti
  has_one :car_model, through: :spaghetti
  has_one :year, through: :spaghetti

  validates_presence_of :name, :description, :price
  validates_inclusion_of :oem,  in: [true, false]


  def self.create_part(params)
    clean_parts_params = {
      name: params[:name],
      description: params[:description],
      oem: params[:oem],
      price: params[:price].to_f
    }
    x = new(clean_parts_params)

    year = Year.find_by(year: params[:year].to_i)
    car_model = CarModel.find_by(name: params[:car_model])
    car_make = Make.find_by(name: params[:car_make])
    y = Spaghetti.new(part_id: x.id, year_id: year.id, car_model_id: car_model.id, make_id: car_make.id)

    if x.valid?
      x.save
      y = Spaghetti.new(part_id: x.id, year_id: year.id, car_model_id: car_model.id, make_id: car_make.id)
      if y.valid?
        y.save
        return {validity: true, message: "Part Successfully Created"}
      else
        x.destroy
      end
    else
      return {validity: false, message: "ERROR: Part Creation Failed"}
    end
  end

end
