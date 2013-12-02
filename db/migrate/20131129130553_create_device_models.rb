class CreateDeviceModels < ActiveRecord::Migration
  def change
    create_table :device_models do |t|
      t.string :model
      t.text :description
      t.integer :numberOfPort

      t.timestamps
    end
  end
end
