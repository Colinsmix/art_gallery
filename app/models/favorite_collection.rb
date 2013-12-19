class FavoriteCollection < ActiveRecord::Base
  validates_presence_of :customer_id
  validates_presence_of :collection_id
  belongs_to :customer 
  belongs_to :collection 
  
end
