class CreateOidModels < ActiveRecord::Migration
  def change
    create_table :oid_models do |t|

      t.timestamps
    end
  end
end
