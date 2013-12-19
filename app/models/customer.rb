class Customer < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :number
  validates_uniqueness_of :name
  validates_uniqueness_of :number

  has_many :sales
  has_many :favorite_collections, dependent: :destroy
end
