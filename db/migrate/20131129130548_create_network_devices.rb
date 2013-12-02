class CreateNetworkDevices < ActiveRecord::Migration
  def change
    create_table :network_devices do |t|
      t.string :brand
      t.string :type

      t.timestamps
    end
  end
end
