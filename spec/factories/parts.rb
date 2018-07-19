FactoryBot.define do
  factory :part do
    sequence :name do |x|
      "Alternator #{x}"
    end

    description "This is a nice alternator"
    oem [true, false].sample
    price 5.25
  end

end
