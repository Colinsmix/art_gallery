# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    sequence(:artist_id) {|n| n}
    creation_date "12/18/2013"
    avail_date "12/18/2013"
    type ""
    sold_at 1.5
    sale_id 1
    name "Rain"
  end
end
