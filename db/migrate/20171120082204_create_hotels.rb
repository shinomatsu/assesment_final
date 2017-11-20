class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|

      t.integer :num_of_rooms
      t.integer :guest_number
      t.string :country
      t.string :state
      t.string :city
      t.text :description
      t.json :photos

      t.timestamps
    end
  end
end
