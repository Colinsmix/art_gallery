require 'spec_helper'

describe Piece do
  let!(:piece1) { FactoryGirl.create(:piece) }
  let(:piece2) { FactoryGirl.create(:piece, creation_date: "1028/023/028") }
  it { should validate_presence_of(:artist_id) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).scoped_to(:artist_id) }

  it "should not accept invalid dates for creation_date" do 
    expect(piece2.valid?).to be_false
  end

end
