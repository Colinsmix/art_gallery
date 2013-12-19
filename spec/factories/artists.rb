# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    sequence(:name) {|n| "example_name #{n}"}
    number "4566543456"
    birth_place "MyString"
    style_id "MyString"
  end
end
