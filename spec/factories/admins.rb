# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin do
    email 'dummy@example.com'
    password 'password123'
  end
end