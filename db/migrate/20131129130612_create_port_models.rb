class CreatePortModels < ActiveRecord::Migration
  def change
    create_table :port_models do |t|

      t.timestamps
    end
  end
end
