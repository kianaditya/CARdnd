FactoryBot.define do
  factory :automobile do
    brand { "Volvo" }
    model { "V60" }
    year { 2010 }
    price { 500 }
    user
  end
end
