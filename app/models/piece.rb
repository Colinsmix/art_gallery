class Piece < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :artist_id
  validates_presence_of :creation_date
  validates_presence_of :avail_date
  validates_uniqueness_of :name, scope: :artist_id

  belongs_to :artist
  belongs_to :sale
  has_many :piece_collections, dependent: :destroy

end
