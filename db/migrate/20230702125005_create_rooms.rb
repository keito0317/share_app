class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :details
      t.string :price
      t.string :address
      t.date :check_in
      t.date :check_out
      t.string :persons

      t.timestamps
    end
  end
end
