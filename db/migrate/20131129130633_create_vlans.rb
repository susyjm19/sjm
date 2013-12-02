class CreateVlans < ActiveRecord::Migration
  def change
    create_table :vlans do |t|
      t.string :name
      t.string :gateway
      t.string :netMask
      t.integer :tag

      t.timestamps
    end
  end
end
