class Issue < ActiveRecord::Base
  has_many :rooms
  has_many :rooms, :through => :room_issues
  validates :name, :severity, :description, :presence => true
  validates :description, :length => {maximum => 500}
  validates :name, :severity, :length => {maximum => 20}
end
