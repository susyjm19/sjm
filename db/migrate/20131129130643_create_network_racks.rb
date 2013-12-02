class CreateNetworkRacks < ActiveRecord::Migration
  def change
    create_table :network_racks do |t|
      t.string :brand
      t.string :type

      t.timestamps
    end
  end
end
