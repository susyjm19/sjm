class CreatePanelBrands < ActiveRecord::Migration
  def change
    create_table :panel_brands do |t|
      t.string :name

      t.timestamps
    end
  end
end
