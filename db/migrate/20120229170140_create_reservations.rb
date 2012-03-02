class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :flight_id
      t.string  :card_number
      t.date   :departs_on

      t.timestamps
    end
    
    add_index :reservations, :user_id
    add_index :reservations, :flight_id
    
  end
end
