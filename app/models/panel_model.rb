class PanelModel < ActiveRecord::Base
  has_many :panels
  belongs_to :panel_brand
  validates :name, :numberOfPort, :category, :presence => true
  validates :numberOfPort, :only_integer, :length => {maximum => 2}
  validates :category, :length => {maximum => 3}
  validates :name, :length => {maximum => 20}
end
