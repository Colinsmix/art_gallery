class Piece < ActiveRecord::Base
  before_save { |piece| piece.creation_date = Chronic.parse(piece.creation_date) }
  DATE_REGEX = /(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d/
  validates_presence_of :name
  validates_uniqueness_of :name, scope: :artist_id
  validates :creation_date, format: { with: DATE_REGEX, message: "SDLIUFHJLSIEFHJELSc" }
end
