class Collection < ActiveRecord::Base
  validates_presence_of :name

  has_many :favorite_collections, dependent: :destroy
  has_many :piece_collections, dependent: :destroy
end
