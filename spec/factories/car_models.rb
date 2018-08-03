FactoryBot.define do
  factory :car_model do
    sequence :name do |x|
      "Crap Box GT #{x}"
    end
  end
end
