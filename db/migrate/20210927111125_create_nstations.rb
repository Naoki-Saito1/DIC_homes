class CreateNstations < ActiveRecord::Migration[6.0]
  def change
    create_table :nstations do |t|
      t.string :route
      t.string :station
      t.string :minonfoot
      t.references :home, null: false, foreign_key: true
      t.timestamps
    end
  end
end
