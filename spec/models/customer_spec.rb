require 'spec_helper'

describe Customer do
  let!(:customer1) { FactoryGirl.create(:customer) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:number) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_uniqueness_of(:number) }

  it { should have_many(:sales) }
  it { should have_many(:favorite_collections).dependent(:destroy) }
end
