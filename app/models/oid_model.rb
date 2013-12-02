class OidModel < ActiveRecord::Base
  belongs_to :oid
  belongs_to :device_model
end
