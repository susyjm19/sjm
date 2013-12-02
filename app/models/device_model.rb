class DeviceModel < ActiveRecord::Base
  #has_many :device_details, :foreign_key =>'id', :class_name => 'DeviceDetail'
  has_many :port_models
  has_many :port_types, :through => :port_models
  belongs_to :network_device
  has_many :oids, :through => :oid_models
  validates :model, :numberOfPort, :presence => true
  validates :model, :length => { :maximum => 50 }
  validates :numberOfPort, :only_integer, :length => { :maximum => 2 }
end
