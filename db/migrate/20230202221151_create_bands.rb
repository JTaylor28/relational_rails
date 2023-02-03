class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.boolean :headliner
      t.integer :members
      t.timestamps
    end
  end
end
