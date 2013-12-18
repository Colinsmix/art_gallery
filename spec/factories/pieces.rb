# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    artist_id 1
    creation_date "2013-12-18"
    avail_date "2013-12-18"
    type ""
    sold_at 1.5
    sale_id 1
    name "Rain"
  end
end
