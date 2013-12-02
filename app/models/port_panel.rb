class PortPanel < ActiveRecord::Base
  has_one :switch_port
  belongs_to :panel
  validates :identifier, :only_integer, :presence => true
end
