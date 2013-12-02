class RoomIssue < ActiveRecord::Base
  belongs_to :room
  belongs_to :issue
  validates :activityDate, :presence => true
end
