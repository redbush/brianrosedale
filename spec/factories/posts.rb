# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    sequence(:title) {|n| "Title #{n}" }
    sequence(:summary) {|n| "Summary #{n}" }
    sequence(:content) {|n| "Content #{n}" }
  end
end
