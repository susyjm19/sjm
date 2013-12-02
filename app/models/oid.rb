class Oid < ActiveRecord::Base
  has_many :oid_models
  has_many :device_models, :through => :oid_models
  has_many :events
  has_many :switch_ports, :through => :events
  validates :name, :message, :priorityLevel, :oid, :presence => true
  validates :name, :length => { :maximum => 15 }
end
