class CreateDeviceDetails < ActiveRecord::Migration
  def change
    create_table :device_details do |t|
      t.string :macAddress
      t.string :ipAddress
      t.string :osVersion
      t.text :function

      t.timestamps
    end
  end
end
