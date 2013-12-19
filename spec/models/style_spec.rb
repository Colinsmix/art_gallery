require 'spec_helper'

describe Style do
  let!(:style1) { FactoryGirl.create(:style) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:artists) }
end
