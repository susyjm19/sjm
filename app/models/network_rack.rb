class NetworkRack < ActiveRecord::Base
  has_many :panel_brands
  validates :name, :type, :presence => true, :length => {maximum => 15}
  belongs_to :room
end
