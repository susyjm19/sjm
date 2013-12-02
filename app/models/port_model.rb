class PortModel < ActiveRecord::Base
  belongs_to :device_model
  belongs_to :port_type
end
