FactoryBot.define do
  factory :user do
    email {'real@mail.com'}
    password {'password'}
    password_confirmation {'password'}
    firstname {'Greg'}
    lastname {'Kallai'}
    address {'OpenLab, Stockholm, Sweden'}
    drivingage {9}
    age {31}
    about {'I really like drinking and driving'}
    phone {'123456789'}
  end
end
