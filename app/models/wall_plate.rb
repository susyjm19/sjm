class WallPlate < ActiveRecord::Base
  belongs_to :host
  belongs_to :office
end
