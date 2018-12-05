FactoryBot.define do
  factory :user do
    email {'real@mail.com'}
    password {'password'}
    password_confirmation {'password'}
    first_name {'Greg'}
    last_name {'Kallai'}
    address {'OpenLab, Stockholm, Sweden'}
    driving_age {9}
    age {31}
    about {'I really like drinking and driving'}
    phone {'123456789'}
  end
end
