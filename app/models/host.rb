class Host < ActiveRecord::Base
  has_one :wall_plate
  belongs_to :vlan
  belongs_to :switch_port
  validates :name, :macAddress, :ipAddress, :presence => true
  validates :macAddress, :length => { :maximum => 17 }
  validates :ipAddress, :length => { :maximum => 15 }
  validates :name, :length => { :maximum => 30 }
end
