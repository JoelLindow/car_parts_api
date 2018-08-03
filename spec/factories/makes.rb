FactoryBot.define do
  factory :make do
    sequence :name do |x|
      "#{x} Chevroyotacura"
    end
  end
end
