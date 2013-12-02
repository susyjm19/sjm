class CreateOids < ActiveRecord::Migration
  def change
    create_table :oids do |t|
      t.string :oid
      t.string :name
      t.text :message
      t.string :priorityLevel

      t.timestamps
    end
  end
end
