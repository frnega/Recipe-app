FactoryBot.define do
  factory :recipe do
    name { 'ebi' }
    preparation_time { 1 }
    cooking_time { 1 }
    description { 'new' }
    public { true }
    user_id { 1 }
  end
end
