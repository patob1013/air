class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer  :departure_airport_id
      t.integer  :arrival_airport_id
      t.string   :number
      t.time     :departs_at
      t.integer  :distance

      t.timestamps
    end
  end
end
