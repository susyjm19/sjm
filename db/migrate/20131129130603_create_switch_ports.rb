class CreateSwitchPorts < ActiveRecord::Migration
  def change
    create_table :switch_ports do |t|
      t.string :name
      t.string :macAddress
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
