class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.integer :capacity
      t.boolean :sold_out
      t.timestamps
    end
  end
end
