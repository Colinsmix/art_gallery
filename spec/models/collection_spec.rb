require 'spec_helper'

describe Collection do
  it { should validate_presence_of(:name) }
  it { should have_many(:favorite_collections).dependent(:destroy) }
  it { should have_many(:piece_collections).dependent(:destroy) }
end
