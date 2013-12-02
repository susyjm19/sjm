class CreatePanelModels < ActiveRecord::Migration
  def change
    create_table :panel_models do |t|
      t.string :name
      t.integer :numberOfPort
      t.string :category

      t.timestamps
    end
  end
end
