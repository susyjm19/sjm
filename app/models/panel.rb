class Panel < ActiveRecord::Base
  has_many :port_panels
  belongs_to :panel_model
  validates :description, :length => {:maximum => 100}
end
