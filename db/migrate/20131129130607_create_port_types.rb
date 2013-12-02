class CreatePortTypes < ActiveRecord::Migration
  def change
    create_table :port_types do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
