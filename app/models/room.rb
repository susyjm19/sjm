class Room < ActiveRecord::Base
  has_many :network_racks
  has_many :issues
  has_many :issues, :through => :room_issues
  belongs_to :location
  validates :name, :presence => true, :length => { :maximum => 20}
end
