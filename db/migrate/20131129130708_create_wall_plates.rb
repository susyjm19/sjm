class CreateWallPlates < ActiveRecord::Migration
  def change
    create_table :wall_plates do |t|
      t.integer :number

      t.timestamps
    end
  end
end
