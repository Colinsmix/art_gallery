require 'spec_helper'

describe Piece do
  let!(:piece1) { FactoryGirl.create(:piece) }
  it { should validate_presence_of(:artist_id) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).scoped_to(:artist_id) }

end
