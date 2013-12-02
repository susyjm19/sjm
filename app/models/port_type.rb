class PortType < ActiveRecord::Base
  has_many :device_models, :through => :port_models
  has_many :port_models
  validates :name, :presence => true
  validates :name, :length => { :maximum => 15 }

end
