require 'spec_helper'

describe PieceCollection do
  it { should validate_presence_of(:piece_id) }
  it { should validate_presence_of(:collection_id) } 
  it { should belong_to(:piece) }
  it { should belong_to(:collection) }
  
end
