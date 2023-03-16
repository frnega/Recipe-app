FactoryBot.define do
  factory :food do
    sequence(:name) { |n| "foodItem#{n}" }
    measurement_unit { 'cm' }
    unit_price { 12 }
    user_id { 1 }
  end
end
