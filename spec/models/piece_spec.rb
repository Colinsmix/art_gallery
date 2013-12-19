require 'spec_helper'

describe Piece do
  let!(:piece1) { FactoryGirl.create(:piece) }
  it { should validate_presence_of(:artist_id) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:creation_date) }
  it { should validate_presence_of(:avail_date) }
  it { should validate_uniqueness_of(:name).scoped_to(:artist_id) }

  it { should belong_to(:artist) }
  it { should belong_to(:sale) }
  it { should have_many(:piece_collections).dependent(:destroy) }
end
