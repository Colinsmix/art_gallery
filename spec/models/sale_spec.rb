require 'spec_helper'

describe Sale do
  it { should validate_presence_of(:customer_id) }
  it { should have_many(:pieces) }
  it { should belong_to(:customer) }
end
