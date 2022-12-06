class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :hotel_id
      t.date :start
      t.date :end
      t.integer :NumberOfGuests

      t.timestamps
    end
  end
end
