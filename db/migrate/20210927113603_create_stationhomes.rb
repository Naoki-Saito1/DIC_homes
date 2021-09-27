class CreateStationhomes < ActiveRecord::Migration[6.0]
  def change
    create_table :stationhomes do |t|
      t.references :home, null: false, foreign_key: true
      t.references :nstation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
