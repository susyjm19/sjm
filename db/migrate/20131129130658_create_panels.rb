class CreatePanels < ActiveRecord::Migration
  def change
    create_table :panels do |t|
      t.text :description

      t.timestamps
    end
  end
end
