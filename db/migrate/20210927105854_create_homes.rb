class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :price
      t.string :address
      t.string :age
      t.text :mark
      
      t.timestamps
    end
  end
end
