class PieceCollection < ActiveRecord::Base
  validates_presence_of :piece_id
  validates_presence_of :collection_id
  belongs_to :piece
  belongs_to :collection
end
