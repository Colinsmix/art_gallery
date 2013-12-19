class Sale < ActiveRecord::Base
  validates_presence_of :customer_id
  has_many :pieces
  belongs_to :customer
end
