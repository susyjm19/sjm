class SwitchPort < ActiveRecord::Base
  has_many :oids
  has_many :oids, :through => :events
  belongs_to :vlan
  has_one :host
  belongs_to :port_panel
  validates :name, :macAddress, :status,:presence => true
  validates :macAddress, :length => { :maximum => 17 }
  validates :name, :status,:length => { :maximum => 20}
end
