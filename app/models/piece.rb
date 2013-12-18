class Piece < ActiveRecord::Base
  validates_presence_of :artist_id
  validates_presence_of :name
  validates_uniqueness_of :name, scope: :artist_id

end
