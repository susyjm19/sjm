class Vlan < ActiveRecord::Base
  has_many :hosts
  has_many :switch_ports
  validates :name, :gateway, :netMask, :tag, :presence => true
  validates :netMask, :gateway, :length => { :maximum => 15 }
  validates :tag , :only_integer,:length => { :maximum => 3}
end
