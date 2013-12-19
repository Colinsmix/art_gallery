# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    sequence(:artist_id) {|n| n}
    creation_date Date.today
    avail_date Date.today
    type ""
    sold_at 1.5
    sale_id 1
    name "Rain"
  end
end
