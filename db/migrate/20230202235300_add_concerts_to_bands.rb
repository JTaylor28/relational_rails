class AddConcertsToBands < ActiveRecord::Migration[5.2]
  def change
    add_reference :bands, :concerts, foreign_key: true
  end
end
