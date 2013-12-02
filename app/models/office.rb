class Office < ActiveRecord::Base
  has_many :wall_plates
  validates :name, :presence => true, :length => {maximum => 30}
end
