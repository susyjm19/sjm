class Event < ActiveRecord::Base
  belongs_to :oid
  belongs_to :switch_port
  validates :name, :activityDate, :presence => true
  validates :name, :length => { :maximum => 100 }
end
