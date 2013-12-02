class CreatePortPanels < ActiveRecord::Migration
  def change
    create_table :port_panels do |t|

      t.timestamps
    end
  end
end
