class PanelBrand < ActiveRecord::Base
  has_many :panel_models
  validates :name, :presence => true, :length => {maximum => 20}
  belongs_to :network_rack
end
