class Artist < ActiveRecord::Base
  before_save { |artist| artist.number = artist.number.gsub(/\D/i, "") }
  
  validates_presence_of :name
  validates_presence_of :number
  validates_presence_of :birth_place
  validates_uniqueness_of(:name)
  validates_uniqueness_of(:number)

  has_many :pieces, dependent: :nullify
  belongs_to :style
end
