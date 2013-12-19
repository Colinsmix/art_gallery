require 'spec_helper'

describe Artist do
  let!(:artist1) { FactoryGirl.create(:artist) }
  let(:artist2) { FactoryGirl.create(:artist, number: "5678927364asdf")}
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:birth_place) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_uniqueness_of(:number)}

  it "should ensure length of number 10" do
    expect(artist1.number.length).to eql(10)
  end

  it "should not allow any non digit character for number" do
    expect(artist2.number).should_not include("asdf")
  end

  it { should have_many(:pieces).dependent(:nullify) }
  it { should belong_to(:style) }
end
