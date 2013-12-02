class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :activityDate

      t.timestamps
    end
  end
end
