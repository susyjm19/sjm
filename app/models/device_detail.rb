class DeviceDetail < ActiveRecord::Base
  has_many :switch_ports
  belongs_to :device_model
  validates :macAddress, :ipAddress, :osVersion, :presence => true
  validates :macAddress, :length => { :maximum => 17 }
  validates :ipAddress, :length => { :maximum => 15 }

end
