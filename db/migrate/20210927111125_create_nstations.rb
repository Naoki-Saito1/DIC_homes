class CreateNstations < ActiveRecord::Migration[6.0]
  def change
    create_table :nstations do |t|
      t.string :first_route
      t.string :first_station
      t.string :first_minonfoot
      t.string :second_route
      t.string :second_station
      t.string :second_minonfoot
      t.references :home, null: false, foreign_key: true
      t.timestamps
    end
  end
end
