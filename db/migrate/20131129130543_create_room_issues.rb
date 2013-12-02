class CreateRoomIssues < ActiveRecord::Migration
  def change
    create_table :room_issues do |t|
      t.timestamp :activityDate

      t.timestamps
    end
  end
end
