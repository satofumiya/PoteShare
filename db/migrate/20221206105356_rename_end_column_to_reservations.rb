class RenameEndColumnToReservations < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :end , :end_day
  end
end
