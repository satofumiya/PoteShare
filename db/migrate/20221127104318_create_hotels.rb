class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :hotel_introduction
      t.integer :price
      t.string :address
      t.string :hotel_image

      t.timestamps
    end
  end
end
